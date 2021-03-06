% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appsync_operations.R
\name{appsync_create_graphql_api}
\alias{appsync_create_graphql_api}
\title{Creates a GraphqlApi object}
\usage{
appsync_create_graphql_api(name, logConfig, authenticationType,
  userPoolConfig, openIDConnectConfig, tags,
  additionalAuthenticationProviders, xrayEnabled)
}
\arguments{
\item{name}{[required] A user-supplied name for the \code{GraphqlApi}.}

\item{logConfig}{The Amazon CloudWatch Logs configuration.}

\item{authenticationType}{[required] The authentication type: API key, AWS IAM, OIDC, or Amazon Cognito user
pools.}

\item{userPoolConfig}{The Amazon Cognito user pool configuration.}

\item{openIDConnectConfig}{The OpenID Connect configuration.}

\item{tags}{A \code{TagMap} object.}

\item{additionalAuthenticationProviders}{A list of additional authentication providers for the \code{GraphqlApi} API.}

\item{xrayEnabled}{A flag indicating whether to enable X-Ray tracing for the \code{GraphqlApi}.}
}
\value{
A list with the following syntax:\preformatted{list(
  graphqlApi = list(
    name = "string",
    apiId = "string",
    authenticationType = "API_KEY"|"AWS_IAM"|"AMAZON_COGNITO_USER_POOLS"|"OPENID_CONNECT",
    logConfig = list(
      fieldLogLevel = "NONE"|"ERROR"|"ALL",
      cloudWatchLogsRoleArn = "string",
      excludeVerboseContent = TRUE|FALSE
    ),
    userPoolConfig = list(
      userPoolId = "string",
      awsRegion = "string",
      defaultAction = "ALLOW"|"DENY",
      appIdClientRegex = "string"
    ),
    openIDConnectConfig = list(
      issuer = "string",
      clientId = "string",
      iatTTL = 123,
      authTTL = 123
    ),
    arn = "string",
    uris = list(
      "string"
    ),
    tags = list(
      "string"
    ),
    additionalAuthenticationProviders = list(
      list(
        authenticationType = "API_KEY"|"AWS_IAM"|"AMAZON_COGNITO_USER_POOLS"|"OPENID_CONNECT",
        openIDConnectConfig = list(
          issuer = "string",
          clientId = "string",
          iatTTL = 123,
          authTTL = 123
        ),
        userPoolConfig = list(
          userPoolId = "string",
          awsRegion = "string",
          appIdClientRegex = "string"
        )
      )
    ),
    xrayEnabled = TRUE|FALSE,
    wafWebAclArn = "string"
  )
)
}
}
\description{
Creates a \code{GraphqlApi} object.
}
\section{Request syntax}{
\preformatted{svc$create_graphql_api(
  name = "string",
  logConfig = list(
    fieldLogLevel = "NONE"|"ERROR"|"ALL",
    cloudWatchLogsRoleArn = "string",
    excludeVerboseContent = TRUE|FALSE
  ),
  authenticationType = "API_KEY"|"AWS_IAM"|"AMAZON_COGNITO_USER_POOLS"|"OPENID_CONNECT",
  userPoolConfig = list(
    userPoolId = "string",
    awsRegion = "string",
    defaultAction = "ALLOW"|"DENY",
    appIdClientRegex = "string"
  ),
  openIDConnectConfig = list(
    issuer = "string",
    clientId = "string",
    iatTTL = 123,
    authTTL = 123
  ),
  tags = list(
    "string"
  ),
  additionalAuthenticationProviders = list(
    list(
      authenticationType = "API_KEY"|"AWS_IAM"|"AMAZON_COGNITO_USER_POOLS"|"OPENID_CONNECT",
      openIDConnectConfig = list(
        issuer = "string",
        clientId = "string",
        iatTTL = 123,
        authTTL = 123
      ),
      userPoolConfig = list(
        userPoolId = "string",
        awsRegion = "string",
        appIdClientRegex = "string"
      )
    )
  ),
  xrayEnabled = TRUE|FALSE
)
}
}

\keyword{internal}
