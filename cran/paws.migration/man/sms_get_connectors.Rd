% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sms_operations.R
\name{sms_get_connectors}
\alias{sms_get_connectors}
\title{Describes the connectors registered with the AWS SMS}
\usage{
sms_get_connectors(nextToken, maxResults)
}
\arguments{
\item{nextToken}{The token for the next set of results.}

\item{maxResults}{The maximum number of results to return in a single call. The default
value is 50. To retrieve the remaining results, make another call with
the returned \code{NextToken} value.}
}
\value{
A list with the following syntax:\preformatted{list(
  connectorList = list(
    list(
      connectorId = "string",
      version = "string",
      status = "HEALTHY"|"UNHEALTHY",
      capabilityList = list(
        "VSPHERE"|"SCVMM"|"HYPERV-MANAGER"|"SNAPSHOT_BATCHING"|"SMS_OPTIMIZED"
      ),
      vmManagerName = "string",
      vmManagerType = "VSPHERE"|"SCVMM"|"HYPERV-MANAGER",
      vmManagerId = "string",
      ipAddress = "string",
      macAddress = "string",
      associatedOn = as.POSIXct(
        "2015-01-01"
      )
    )
  ),
  nextToken = "string"
)
}
}
\description{
Describes the connectors registered with the AWS SMS.
}
\section{Request syntax}{
\preformatted{svc$get_connectors(
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}
