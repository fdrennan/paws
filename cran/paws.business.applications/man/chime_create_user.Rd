% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_create_user}
\alias{chime_create_user}
\title{Creates a user under the specified Amazon Chime account}
\usage{
chime_create_user(AccountId, Username, Email, UserType)
}
\arguments{
\item{AccountId}{[required] The Amazon Chime account ID.}

\item{Username}{The user name.}

\item{Email}{The user's email address.}

\item{UserType}{The user type.}
}
\value{
A list with the following syntax:\preformatted{list(
  User = list(
    UserId = "string",
    AccountId = "string",
    PrimaryEmail = "string",
    PrimaryProvisionedNumber = "string",
    DisplayName = "string",
    LicenseType = "Basic"|"Plus"|"Pro"|"ProTrial",
    UserType = "PrivateUser"|"SharedDevice",
    UserRegistrationStatus = "Unregistered"|"Registered"|"Suspended",
    UserInvitationStatus = "Pending"|"Accepted"|"Failed",
    RegisteredOn = as.POSIXct(
      "2015-01-01"
    ),
    InvitedOn = as.POSIXct(
      "2015-01-01"
    ),
    AlexaForBusinessMetadata = list(
      IsAlexaForBusinessEnabled = TRUE|FALSE,
      AlexaForBusinessRoomArn = "string"
    ),
    PersonalPIN = "string"
  )
)
}
}
\description{
Creates a user under the specified Amazon Chime account.
}
\section{Request syntax}{
\preformatted{svc$create_user(
  AccountId = "string",
  Username = "string",
  Email = "string",
  UserType = "PrivateUser"|"SharedDevice"
)
}
}

\keyword{internal}
