% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_container_service_powers}
\alias{lightsail_get_container_service_powers}
\title{Returns the list of powers that can be specified for your Amazon
Lightsail container services}
\usage{
lightsail_get_container_service_powers()
}
\value{
A list with the following syntax:\preformatted{list(
  powers = list(
    list(
      powerId = "string",
      price = 123.0,
      cpuCount = 123.0,
      ramSizeInGb = 123.0,
      name = "string",
      isActive = TRUE|FALSE
    )
  )
)
}
}
\description{
Returns the list of powers that can be specified for your Amazon
Lightsail container services.

The power specifies the amount of memory, the number of vCPUs, and the
base price of the container service.
}
\section{Request syntax}{
\preformatted{svc$get_container_service_powers()
}
}

\keyword{internal}
