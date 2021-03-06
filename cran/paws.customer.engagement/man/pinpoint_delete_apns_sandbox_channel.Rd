% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_delete_apns_sandbox_channel}
\alias{pinpoint_delete_apns_sandbox_channel}
\title{Disables the APNs sandbox channel for an application and deletes any
existing settings for the channel}
\usage{
pinpoint_delete_apns_sandbox_channel(ApplicationId)
}
\arguments{
\item{ApplicationId}{[required] The unique identifier for the application. This identifier is displayed
as the \strong{Project ID} on the Amazon Pinpoint console.}
}
\value{
A list with the following syntax:\preformatted{list(
  APNSSandboxChannelResponse = list(
    ApplicationId = "string",
    CreationDate = "string",
    DefaultAuthenticationMethod = "string",
    Enabled = TRUE|FALSE,
    HasCredential = TRUE|FALSE,
    HasTokenKey = TRUE|FALSE,
    Id = "string",
    IsArchived = TRUE|FALSE,
    LastModifiedBy = "string",
    LastModifiedDate = "string",
    Platform = "string",
    Version = 123
  )
)
}
}
\description{
Disables the APNs sandbox channel for an application and deletes any
existing settings for the channel.
}
\section{Request syntax}{
\preformatted{svc$delete_apns_sandbox_channel(
  ApplicationId = "string"
)
}
}

\keyword{internal}
