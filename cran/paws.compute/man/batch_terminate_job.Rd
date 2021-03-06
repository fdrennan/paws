% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batch_operations.R
\name{batch_terminate_job}
\alias{batch_terminate_job}
\title{Terminates a job in a job queue}
\usage{
batch_terminate_job(jobId, reason)
}
\arguments{
\item{jobId}{[required] The AWS Batch job ID of the job to terminate.}

\item{reason}{[required] A message to attach to the job that explains the reason for canceling
it. This message is returned by future
\code{\link[=batch_describe_jobs]{describe_jobs}} operations on the job. This
message is also recorded in the AWS Batch activity logs.}
}
\value{
An empty list.
}
\description{
Terminates a job in a job queue. Jobs that are in the \code{STARTING} or
\code{RUNNING} state are terminated, which causes them to transition to
\code{FAILED}. Jobs that have not progressed to the \code{STARTING} state are
cancelled.
}
\section{Request syntax}{
\preformatted{svc$terminate_job(
  jobId = "string",
  reason = "string"
)
}
}

\examples{
\dontrun{
# This example terminates a job with the specified job ID.
svc$terminate_job(
  jobId = "61e743ed-35e4-48da-b2de-5c8333821c84",
  reason = "Terminating job."
)
}

}
\keyword{internal}
