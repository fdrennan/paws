% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_get_federation_token}
\alias{connect_get_federation_token}
\title{Retrieves a token for federation}
\usage{
connect_get_federation_token(InstanceId)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance.}
}
\value{
A list with the following syntax:\preformatted{list(
  Credentials = list(
    AccessToken = "string",
    AccessTokenExpiration = as.POSIXct(
      "2015-01-01"
    ),
    RefreshToken = "string",
    RefreshTokenExpiration = as.POSIXct(
      "2015-01-01"
    )
  )
)
}
}
\description{
Retrieves a token for federation.
}
\section{Request syntax}{
\preformatted{svc$get_federation_token(
  InstanceId = "string"
)
}
}

\keyword{internal}
