% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/licensemanager_operations.R
\name{licensemanager_delete_token}
\alias{licensemanager_delete_token}
\title{Deletes the specified token}
\usage{
licensemanager_delete_token(TokenId)
}
\arguments{
\item{TokenId}{[required] Token ID.}
}
\value{
An empty list.
}
\description{
Deletes the specified token. Must be called in the license home Region.
}
\section{Request syntax}{
\preformatted{svc$delete_token(
  TokenId = "string"
)
}
}

\keyword{internal}
