% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_update_public_key}
\alias{cloudfront_update_public_key}
\title{Update public key information}
\usage{
cloudfront_update_public_key(PublicKeyConfig, Id, IfMatch)
}
\arguments{
\item{PublicKeyConfig}{[required] A public key configuration.}

\item{Id}{[required] The identifier of the public key that you are updating.}

\item{IfMatch}{The value of the \code{ETag} header that you received when retrieving the
public key to update. For example: \code{E2QWRUHAPOMQZL}.}
}
\value{
A list with the following syntax:\preformatted{list(
  PublicKey = list(
    Id = "string",
    CreatedTime = as.POSIXct(
      "2015-01-01"
    ),
    PublicKeyConfig = list(
      CallerReference = "string",
      Name = "string",
      EncodedKey = "string",
      Comment = "string"
    )
  ),
  ETag = "string"
)
}
}
\description{
Update public key information. Note that the only value you can change
is the comment.
}
\section{Request syntax}{
\preformatted{svc$update_public_key(
  PublicKeyConfig = list(
    CallerReference = "string",
    Name = "string",
    EncodedKey = "string",
    Comment = "string"
  ),
  Id = "string",
  IfMatch = "string"
)
}
}

\keyword{internal}
