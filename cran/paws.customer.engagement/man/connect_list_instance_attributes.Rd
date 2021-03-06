% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_list_instance_attributes}
\alias{connect_list_instance_attributes}
\title{This API is in preview release for Amazon Connect and is subject to
change}
\usage{
connect_list_instance_attributes(InstanceId, NextToken, MaxResults)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance.}

\item{NextToken}{The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.}

\item{MaxResults}{The maximimum number of results to return per page.}
}
\value{
A list with the following syntax:\preformatted{list(
  Attributes = list(
    list(
      AttributeType = "INBOUND_CALLS"|"OUTBOUND_CALLS"|"CONTACTFLOW_LOGS"|"CONTACT_LENS"|"AUTO_RESOLVE_BEST_VOICES"|"USE_CUSTOM_TTS_VOICES"|"EARLY_MEDIA",
      Value = "string"
    )
  ),
  NextToken = "string"
)
}
}
\description{
This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of all attribute types for the given instance.
}
\section{Request syntax}{
\preformatted{svc$list_instance_attributes(
  InstanceId = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
