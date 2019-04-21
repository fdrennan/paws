% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_remove_attributes}
\alias{pinpoint_remove_attributes}
\title{Used to remove the attributes for an app}
\usage{
pinpoint_remove_attributes(ApplicationId, AttributeType,
  UpdateAttributesRequest)
}
\arguments{
\item{ApplicationId}{[required] The unique ID of your Amazon Pinpoint application.}

\item{AttributeType}{[required] Type of attribute. Can be endpoint-custom-attributes, endpoint-custom-metrics, endpoint-user-attributes.}

\item{UpdateAttributesRequest}{[required]}
}
\description{
Used to remove the attributes for an app
}
\section{Request syntax}{
\preformatted{svc$remove_attributes(
  ApplicationId = "string",
  AttributeType = "string",
  UpdateAttributesRequest = list(
    Blacklist = list(
      "string"
    )
  )
)
}
}

\keyword{internal}