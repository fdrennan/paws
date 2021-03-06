% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot1clickdevicesservice_operations.R
\name{iot1clickdevicesservice_update_device_state}
\alias{iot1clickdevicesservice_update_device_state}
\title{Using a Boolean value (true or false), this operation enables or
disables the device given a device ID}
\usage{
iot1clickdevicesservice_update_device_state(DeviceId, Enabled)
}
\arguments{
\item{DeviceId}{[required] The unique identifier of the device.}

\item{Enabled}{If true, the device is enabled. If false, the device is disabled.}
}
\value{
An empty list.
}
\description{
Using a Boolean value (true or false), this operation enables or
disables the device given a device ID.
}
\section{Request syntax}{
\preformatted{svc$update_device_state(
  DeviceId = "string",
  Enabled = TRUE|FALSE
)
}
}

\keyword{internal}
