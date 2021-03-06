% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitosync_operations.R
\name{cognitosync_set_identity_pool_configuration}
\alias{cognitosync_set_identity_pool_configuration}
\title{Sets the necessary configuration for push sync}
\usage{
cognitosync_set_identity_pool_configuration(IdentityPoolId, PushSync,
  CognitoStreams)
}
\arguments{
\item{IdentityPoolId}{[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. This is the ID of the pool to modify.}

\item{PushSync}{Options to apply to this identity pool for push synchronization.}

\item{CognitoStreams}{Options to apply to this identity pool for Amazon Cognito streams.}
}
\value{
A list with the following syntax:\preformatted{list(
  IdentityPoolId = "string",
  PushSync = list(
    ApplicationArns = list(
      "string"
    ),
    RoleArn = "string"
  ),
  CognitoStreams = list(
    StreamName = "string",
    RoleArn = "string",
    StreamingStatus = "ENABLED"|"DISABLED"
  )
)
}
}
\description{
Sets the necessary configuration for push sync.

This API can only be called with developer credentials. You cannot call
this API with the temporary user credentials provided by Cognito
Identity.
}
\section{Request syntax}{
\preformatted{svc$set_identity_pool_configuration(
  IdentityPoolId = "string",
  PushSync = list(
    ApplicationArns = list(
      "string"
    ),
    RoleArn = "string"
  ),
  CognitoStreams = list(
    StreamName = "string",
    RoleArn = "string",
    StreamingStatus = "ENABLED"|"DISABLED"
  )
)
}
}

\keyword{internal}
