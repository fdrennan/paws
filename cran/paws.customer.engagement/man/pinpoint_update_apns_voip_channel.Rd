% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_update_apns_voip_channel}
\alias{pinpoint_update_apns_voip_channel}
\title{Enables the APNs VoIP channel for an application or updates the status
and settings of the APNs VoIP channel for an application}
\usage{
pinpoint_update_apns_voip_channel(APNSVoipChannelRequest, ApplicationId)
}
\arguments{
\item{APNSVoipChannelRequest}{[required]}

\item{ApplicationId}{[required] The unique identifier for the application. This identifier is displayed
as the \strong{Project ID} on the Amazon Pinpoint console.}
}
\value{
A list with the following syntax:\preformatted{list(
  APNSVoipChannelResponse = list(
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
Enables the APNs VoIP channel for an application or updates the status
and settings of the APNs VoIP channel for an application.
}
\section{Request syntax}{
\preformatted{svc$update_apns_voip_channel(
  APNSVoipChannelRequest = list(
    BundleId = "string",
    Certificate = "string",
    DefaultAuthenticationMethod = "string",
    Enabled = TRUE|FALSE,
    PrivateKey = "string",
    TeamId = "string",
    TokenKey = "string",
    TokenKeyId = "string"
  ),
  ApplicationId = "string"
)
}
}

\keyword{internal}
