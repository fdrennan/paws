% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alexaforbusiness_operations.R
\name{alexaforbusiness_delete_conference_provider}
\alias{alexaforbusiness_delete_conference_provider}
\title{Deletes a conference provider}
\usage{
alexaforbusiness_delete_conference_provider(ConferenceProviderArn)
}
\arguments{
\item{ConferenceProviderArn}{[required] The ARN of the conference provider.}
}
\value{
An empty list.
}
\description{
Deletes a conference provider.
}
\section{Request syntax}{
\preformatted{svc$delete_conference_provider(
  ConferenceProviderArn = "string"
)
}
}

\keyword{internal}
