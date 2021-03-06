% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greengrass_operations.R
\name{greengrass_delete_device_definition}
\alias{greengrass_delete_device_definition}
\title{Deletes a device definition}
\usage{
greengrass_delete_device_definition(DeviceDefinitionId)
}
\arguments{
\item{DeviceDefinitionId}{[required] The ID of the device definition.}
}
\value{
An empty list.
}
\description{
Deletes a device definition.
}
\section{Request syntax}{
\preformatted{svc$delete_device_definition(
  DeviceDefinitionId = "string"
)
}
}

\keyword{internal}
