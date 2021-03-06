% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alexaforbusiness_operations.R
\name{alexaforbusiness_get_profile}
\alias{alexaforbusiness_get_profile}
\title{Gets the details of a room profile by profile ARN}
\usage{
alexaforbusiness_get_profile(ProfileArn)
}
\arguments{
\item{ProfileArn}{The ARN of the room profile for which to request details. Required.}
}
\value{
A list with the following syntax:\preformatted{list(
  Profile = list(
    ProfileArn = "string",
    ProfileName = "string",
    IsDefault = TRUE|FALSE,
    Address = "string",
    Timezone = "string",
    DistanceUnit = "METRIC"|"IMPERIAL",
    TemperatureUnit = "FAHRENHEIT"|"CELSIUS",
    WakeWord = "ALEXA"|"AMAZON"|"ECHO"|"COMPUTER",
    Locale = "string",
    SetupModeDisabled = TRUE|FALSE,
    MaxVolumeLimit = 123,
    PSTNEnabled = TRUE|FALSE,
    AddressBookArn = "string",
    MeetingRoomConfiguration = list(
      RoomUtilizationMetricsEnabled = TRUE|FALSE,
      EndOfMeetingReminder = list(
        ReminderAtMinutes = list(
          123
        ),
        ReminderType = "ANNOUNCEMENT_TIME_CHECK"|"ANNOUNCEMENT_VARIABLE_TIME_LEFT"|"CHIME"|"KNOCK",
        Enabled = TRUE|FALSE
      ),
      InstantBooking = list(
        DurationInMinutes = 123,
        Enabled = TRUE|FALSE
      ),
      RequireCheckIn = list(
        ReleaseAfterMinutes = 123,
        Enabled = TRUE|FALSE
      )
    )
  )
)
}
}
\description{
Gets the details of a room profile by profile ARN.
}
\section{Request syntax}{
\preformatted{svc$get_profile(
  ProfileArn = "string"
)
}
}

\keyword{internal}
