% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_describe_identity_provider}
\alias{cognitoidentityprovider_describe_identity_provider}
\title{Gets information about a specific identity provider}
\usage{
cognitoidentityprovider_describe_identity_provider(UserPoolId,
  ProviderName)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID.}

\item{ProviderName}{[required] The identity provider name.}
}
\value{
A list with the following syntax:\preformatted{list(
  IdentityProvider = list(
    UserPoolId = "string",
    ProviderName = "string",
    ProviderType = "SAML"|"Facebook"|"Google"|"LoginWithAmazon"|"SignInWithApple"|"OIDC",
    ProviderDetails = list(
      "string"
    ),
    AttributeMapping = list(
      "string"
    ),
    IdpIdentifiers = list(
      "string"
    ),
    LastModifiedDate = as.POSIXct(
      "2015-01-01"
    ),
    CreationDate = as.POSIXct(
      "2015-01-01"
    )
  )
)
}
}
\description{
Gets information about a specific identity provider.
}
\section{Request syntax}{
\preformatted{svc$describe_identity_provider(
  UserPoolId = "string",
  ProviderName = "string"
)
}
}

\keyword{internal}
