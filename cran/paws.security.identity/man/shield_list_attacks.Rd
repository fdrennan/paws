% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shield_operations.R
\name{shield_list_attacks}
\alias{shield_list_attacks}
\title{Returns all ongoing DDoS attacks or all DDoS attacks during a specified
time period}
\usage{
shield_list_attacks(ResourceArns, StartTime, EndTime, NextToken,
  MaxResults)
}
\arguments{
\item{ResourceArns}{The ARN (Amazon Resource Name) of the resource that was attacked. If
this is left blank, all applicable resources for this account will be
included.}

\item{StartTime}{The start of the time period for the attacks. This is a \code{timestamp}
type. The sample request above indicates a \code{number} type because the
default used by WAF is Unix time in seconds. However any valid
\href{https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html#parameter-types}{timestamp format}
is allowed.}

\item{EndTime}{The end of the time period for the attacks. This is a \code{timestamp} type.
The sample request above indicates a \code{number} type because the default
used by WAF is Unix time in seconds. However any valid \href{https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html#parameter-types}{timestamp format}
is allowed.}

\item{NextToken}{The \code{ListAttacksRequest.NextMarker} value from a previous call to
\code{ListAttacksRequest}. Pass null if this is the first call.}

\item{MaxResults}{The maximum number of AttackSummary objects to return. If you leave this
blank, Shield Advanced returns the first 20 results.

This is a maximum value. Shield Advanced might return the results in
smaller batches. That is, the number of objects returned could be less
than \code{MaxResults}, even if there are still more objects yet to return.
If there are more objects to return, Shield Advanced returns a value in
\code{NextToken} that you can use in your next request, to get the next batch
of objects.}
}
\value{
A list with the following syntax:\preformatted{list(
  AttackSummaries = list(
    list(
      AttackId = "string",
      ResourceArn = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      AttackVectors = list(
        list(
          VectorType = "string"
        )
      )
    )
  ),
  NextToken = "string"
)
}
}
\description{
Returns all ongoing DDoS attacks or all DDoS attacks during a specified
time period.
}
\section{Request syntax}{
\preformatted{svc$list_attacks(
  ResourceArns = list(
    "string"
  ),
  StartTime = list(
    FromInclusive = as.POSIXct(
      "2015-01-01"
    ),
    ToExclusive = as.POSIXct(
      "2015-01-01"
    )
  ),
  EndTime = list(
    FromInclusive = as.POSIXct(
      "2015-01-01"
    ),
    ToExclusive = as.POSIXct(
      "2015-01-01"
    )
  ),
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
