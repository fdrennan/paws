% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_restore_phone_number}
\alias{chime_restore_phone_number}
\title{Moves a phone number from the Deletion queue back into the phone number
Inventory}
\usage{
chime_restore_phone_number(PhoneNumberId)
}
\arguments{
\item{PhoneNumberId}{[required] The phone number.}
}
\value{
A list with the following syntax:\preformatted{list(
  PhoneNumber = list(
    PhoneNumberId = "string",
    E164PhoneNumber = "string",
    Type = "Local"|"TollFree",
    ProductType = "BusinessCalling"|"VoiceConnector",
    Status = "AcquireInProgress"|"AcquireFailed"|"Unassigned"|"Assigned"|"ReleaseInProgress"|"DeleteInProgress"|"ReleaseFailed"|"DeleteFailed",
    Capabilities = list(
      InboundCall = TRUE|FALSE,
      OutboundCall = TRUE|FALSE,
      InboundSMS = TRUE|FALSE,
      OutboundSMS = TRUE|FALSE,
      InboundMMS = TRUE|FALSE,
      OutboundMMS = TRUE|FALSE
    ),
    Associations = list(
      list(
        Value = "string",
        Name = "AccountId"|"UserId"|"VoiceConnectorId"|"VoiceConnectorGroupId"|"SipRuleId",
        AssociatedTimestamp = as.POSIXct(
          "2015-01-01"
        )
      )
    ),
    CallingName = "string",
    CallingNameStatus = "Unassigned"|"UpdateInProgress"|"UpdateSucceeded"|"UpdateFailed",
    CreatedTimestamp = as.POSIXct(
      "2015-01-01"
    ),
    UpdatedTimestamp = as.POSIXct(
      "2015-01-01"
    ),
    DeletionTimestamp = as.POSIXct(
      "2015-01-01"
    )
  )
)
}
}
\description{
Moves a phone number from the \strong{Deletion queue} back into the phone
number \strong{Inventory}.
}
\section{Request syntax}{
\preformatted{svc$restore_phone_number(
  PhoneNumberId = "string"
)
}
}

\keyword{internal}
