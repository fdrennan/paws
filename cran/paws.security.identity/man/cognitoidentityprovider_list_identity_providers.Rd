% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_list_identity_providers}
\alias{cognitoidentityprovider_list_identity_providers}
\title{Lists information about all identity providers for a user pool}
\usage{
cognitoidentityprovider_list_identity_providers(UserPoolId, MaxResults,
  NextToken)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID.}

\item{MaxResults}{The maximum number of identity providers to return.}

\item{NextToken}{A pagination token.}
}
\value{
A list with the following syntax:\preformatted{list(
  Providers = list(
    list(
      ProviderName = "string",
      ProviderType = "SAML"|"Facebook"|"Google"|"LoginWithAmazon"|"SignInWithApple"|"OIDC",
      LastModifiedDate = as.POSIXct(
        "2015-01-01"
      ),
      CreationDate = as.POSIXct(
        "2015-01-01"
      )
    )
  ),
  NextToken = "string"
)
}
}
\description{
Lists information about all identity providers for a user pool.
}
\section{Request syntax}{
\preformatted{svc$list_identity_providers(
  UserPoolId = "string",
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
