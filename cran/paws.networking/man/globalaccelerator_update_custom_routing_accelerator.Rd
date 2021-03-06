% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/globalaccelerator_operations.R
\name{globalaccelerator_update_custom_routing_accelerator}
\alias{globalaccelerator_update_custom_routing_accelerator}
\title{Update a custom routing accelerator}
\usage{
globalaccelerator_update_custom_routing_accelerator(AcceleratorArn,
  Name, IpAddressType, Enabled)
}
\arguments{
\item{AcceleratorArn}{[required] The Amazon Resource Name (ARN) of the accelerator to update.}

\item{Name}{The name of the accelerator. The name can have a maximum of 32
characters, must contain only alphanumeric characters or hyphens (-),
and must not begin or end with a hyphen.}

\item{IpAddressType}{The value for the address type must be IPv4.}

\item{Enabled}{Indicates whether an accelerator is enabled. The value is true or false.
The default value is true.

If the value is set to true, the accelerator cannot be deleted. If set
to false, the accelerator can be deleted.}
}
\value{
A list with the following syntax:\preformatted{list(
  Accelerator = list(
    AcceleratorArn = "string",
    Name = "string",
    IpAddressType = "IPV4",
    Enabled = TRUE|FALSE,
    IpSets = list(
      list(
        IpFamily = "string",
        IpAddresses = list(
          "string"
        )
      )
    ),
    DnsName = "string",
    Status = "DEPLOYED"|"IN_PROGRESS",
    CreatedTime = as.POSIXct(
      "2015-01-01"
    ),
    LastModifiedTime = as.POSIXct(
      "2015-01-01"
    )
  )
)
}
}
\description{
Update a custom routing accelerator.
}
\section{Request syntax}{
\preformatted{svc$update_custom_routing_accelerator(
  AcceleratorArn = "string",
  Name = "string",
  IpAddressType = "IPV4",
  Enabled = TRUE|FALSE
)
}
}

\keyword{internal}
