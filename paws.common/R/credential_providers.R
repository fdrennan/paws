#' @include net.R
#' @include credential_sts.R
#' @include dateutil.R
NULL

Creds <- struct(
  access_key_id = "",
  secret_access_key = "",
  session_token = "",
  expiration = Inf,
  provider_name = ""
)

# Retrieve credentials stored in R or OS environment variables.
env_provider <- function() {
  access_key_id <- get_env("AWS_ACCESS_KEY_ID")
  secret_access_key <- get_env("AWS_SECRET_ACCESS_KEY")
  session_token <- get_env("AWS_SESSION_TOKEN")
  expiration <- as_timestamp(get_env("AWS_CREDENTIAL_EXPIRATION"), "iso8601")
  if (length(expiration) == 0) expiration <- Inf

  if (access_key_id != "" && secret_access_key != "") {
    creds <- Creds(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = session_token,
      expiration = expiration
    )
  } else {
    creds <- NULL
  }
  return(creds)
}

# Retrieve credentials stored in credentials file.
credentials_file_provider <- function(profile = "") {

  credentials_path <- get_credentials_file_path()
  if (is.null(credentials_path)) return(NULL)

  aws_profile <- get_profile_name(profile)

  credentials <- ini::read.ini(credentials_path)

  if (is.null(credentials[[aws_profile]])) return(NULL)

  access_key_id <- credentials[[aws_profile]]$aws_access_key_id
  secret_access_key <- credentials[[aws_profile]]$aws_secret_access_key
  session_token <- credentials[[aws_profile]]$aws_session_token

  if (is.null(access_key_id) || is.null(secret_access_key)) return(NULL)

  if (is.null(session_token)) {
    session_token <- ""
  }

  if (access_key_id != "" && secret_access_key != "") {
    creds <- Creds(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = session_token,
      expiration = Inf
    )
  } else {
    creds <- NULL
  }
  return(creds)
}

# Get credentials that are specified by an item in the AWS config file.
config_file_provider <- function(profile = "") {

  config_path <- get_config_file_path()
  if (is.null(config_path)) return(NULL)

  config <- ini::read.ini(config_path)

  profile_name <- get_profile_name(profile)
  if (profile_name != "default") profile_name <- paste("profile", profile_name)
  if (is.null(config[[profile_name]])) return(NULL)
  profile <- config[[profile_name]]

  if ("credential_process" %in% names(profile)) {
    creds <- config_file_credential_process(profile$credential_process)
    if (!is.null(creds)) return(creds)
  }

  if ("role_arn" %in% names(profile)) {
    role_arn <- profile$role_arn
    role_session_name <- profile$role_session_name
    if (is.null(role_session_name)) {
      sys <- Sys.info()
      role_session_name <- digest::digest(paste0(sys["user"], sys["nodename"]))
    }
    mfa_serial <- profile$mfa_serial

    if ("credential_source" %in% names(profile)) {
      credential_source <- profile$credential_source
      creds <- config_file_credential_source(role_arn, role_session_name, mfa_serial, credential_source)
      if (!is.null(creds)) return(creds)
    }
    if ("source_profile" %in% names(profile)) {
      source_profile <- profile$source_profile
      creds <- config_file_source_profile(role_arn, role_session_name, mfa_serial, source_profile)
      if (!is.null(creds)) return(creds)
    }
  }

  return(NULL)
}

# Get credentials by running a process specified in `command`.
config_file_credential_process <- function(command) {
  output <- system(command, intern = TRUE)
  data <- jsonlite::fromJSON(output)

  if (data$Version != 1) return(NULL)

  access_key_id <- data$AccessKeyId
  secret_access_key <- data$SecretAccessKey
  if (is.null(access_key_id) || access_key_id == "" ||
      is.null(secret_access_key) || secret_access_key == "") {
    return(NULL)
  }

  session_token <- data$SessionToken
  if (is.null(session_token)) session_token <- ""

  expiration <- as_timestamp(data$Expiration, "iso8601")
  if (length(expiration) == 0) expiration <- Inf

  creds <- Creds(
    access_key_id = access_key_id,
    secret_access_key = secret_access_key,
    session_token = session_token,
    expiration = expiration
  )
  return(creds)
}

# Get the `role_arn`'s temporary credentials given a `credential_source`,
# either "Environment", "Ec2InstanceMetadata", or "EcsContainer".
# See https://docs.aws.amazon.com/credref/latest/refdocs/setting-global-credential_source.html.
config_file_credential_source <- function(role_arn, role_session_name, mfa_serial, credential_source) {
  if (credential_source == "Environment") {
    creds <- env_provider()
  } else if (credential_source == "Ec2InstanceMetadata") {
    creds <- iam_credentials_provider()
  } else if (credential_source == "EcsContainer") {
    creds <- container_credentials_provider()
  }
  if (is.null(creds)) return(NULL)
  role_creds <- get_assumed_role_creds(role_arn, role_session_name, mfa_serial, creds)
  return(role_creds)
}

# Get STS temporary credentials for the role with ARN `role_arn` using
# credentials found in profile named `source_profile`.
# See https://docs.aws.amazon.com/credref/latest/refdocs/setting-global-source_profile.html.
config_file_source_profile <- function(role_arn, role_session_name, mfa_serial, source_profile) {
  creds <- credentials_file_provider(source_profile)
  if (is.null(creds)) creds <- config_file_provider(source_profile)
  if (is.null(creds)) return(NULL)
  role_creds <- get_assumed_role_creds(role_arn, role_session_name, mfa_serial, creds)
  return(role_creds)
}

# Get credentials for assumed role `role_arn`, using credentials in `creds`.
# If the role requires MFA, the MFA device's serial number must be provided in
# `mfa_serial`, and the user will be prompted interactively to provide the
# current MFA token code.
get_assumed_role_creds <- function(role_arn, role_session_name, mfa_serial, creds) {
  svc <- sts(config = list(credentials = list(creds = creds), region = "us-east-1"))
  if (is.null(mfa_serial) || mfa_serial == "") {
    resp <- svc$assume_role(
      RoleArn = role_arn,
      RoleSessionName = role_session_name
    )
  } else {
    token_code <- get_token_code()
    resp <- svc$assume_role(
      RoleArn = role_arn,
      RoleSessionName = role_session_name,
      SerialNumber = mfa_serial,
      TokenCode = token_code
    )
  }
  if (is.null(resp)) return(NULL)
  role_creds <- Creds(
    access_key_id = resp$Credentials$AccessKeyId,
    secret_access_key = resp$Credentials$SecretAccessKey,
    session_token = resp$Credentials$SessionToken,
    expiration = resp$Credentials$Expiration
  )
  return(role_creds)
}

# Get the user's MFA token code from a prompt.
# Use an RStudio prompt if running in RStudio.
# Otherwise use a text prompt in the console.
get_token_code <- function() {
  if (requireNamespace("rstudioapi", quietly = TRUE) && rstudioapi::isAvailable()) {
    token_code <- rstudioapi::showPrompt("MFA", "Enter MFA token code")
  } else {
    token_code <- readline("Enter MFA token code: ")
  }
  return(token_code)
}

# Retrieve container job role credentials
container_credentials_provider <- function() {

  # Initialize to NULL
  credentials_response <- NULL

  container_credentials_uri <- get_env("AWS_CONTAINER_CREDENTIALS_RELATIVE_URI")

  # Look for job role credentials first
  if (container_credentials_uri != "") {
    credentials_response <- get_container_credentials()
  }

  if (is.null(credentials_response)) return(NULL)

  credentials_response_body <-
    jsonlite::fromJSON(raw_to_utf8(credentials_response$body))

  access_key_id <- credentials_response_body$AccessKeyId
  secret_access_key <- credentials_response_body$SecretAccessKey
  session_token <- credentials_response_body$Token
  expiration <- as_timestamp(credentials_response_body$Expiration, "iso8601")

  if (is.null(access_key_id) || is.null(secret_access_key) ||
      is.null(session_token)) return(NULL)

  if (access_key_id != "" && secret_access_key != "" &&
      session_token != "") {
    creds <- Creds(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = session_token,
      expiration = expiration
    )
  } else {
    creds <- NULL
  }
  return(creds)
}

# Gets the job role credentials by making an http request
get_container_credentials <- function() {

  credentials_uri <- get_env("AWS_CONTAINER_CREDENTIALS_RELATIVE_URI")
  if (nchar(credentials_uri) == 0) {
    return(NULL)
  }

  metadata_url <- file.path("http://169.254.170.2", credentials_uri)
  metadata_request <-
    new_http_request("GET", metadata_url, timeout = 1)

  metadata_response <- tryCatch({
    issue(metadata_request)
  }, error = function (e){
    NULL
  })

  if (is.null(metadata_response) || metadata_response$status_code != 200) {
    return(NULL)
  }

  return(metadata_response)
}

# Retrieve credentials for EC2 IAM Role
iam_credentials_provider <- function() {

  iam_role <- get_iam_role()
  if(is.null(iam_role)) return(NULL)

  credentials_url <- file.path("iam/security-credentials", iam_role)

  credentials_response <- get_instance_metadata(credentials_url)

  if (is.null(credentials_response)) return(NULL)

  credentials_response_body <- jsonlite::fromJSON(raw_to_utf8(credentials_response$body))

  access_key_id <- credentials_response_body$AccessKeyId
  secret_access_key <- credentials_response_body$SecretAccessKey
  session_token <- credentials_response_body$Token
  expiration <- as_timestamp(credentials_response_body$Expiration, "iso8601")

  if (is.null(access_key_id) || is.null(secret_access_key) ||
      is.null(session_token)) return(NULL)

  if (access_key_id != "" && secret_access_key != "" &&
      session_token != "") {
    creds <- Creds(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = session_token,
      expiration = expiration
    )
  } else {
    creds <- NULL
  }
  return(creds)
}

# Get the name of the IAM role from the instance metadata.
get_iam_role <- function() {

  iam_role_response <-  get_instance_metadata("iam/security-credentials")

  if (is.null(iam_role_response)) return(NULL)

  iam_role_name <- raw_to_utf8(iam_role_response$body)

  return(iam_role_name)
}

no_credentials <- function() {
  stop("No credentials provided")
}
