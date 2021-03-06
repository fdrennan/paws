% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_invite_users}
\alias{chime_invite_users}
\title{Sends email to a maximum of 50 users, inviting them to the specified
Amazon Chime Team account}
\usage{
chime_invite_users(AccountId, UserEmailList, UserType)
}
\arguments{
\item{AccountId}{[required] The Amazon Chime account ID.}

\item{UserEmailList}{[required] The user email addresses to which to send the email invitation.}

\item{UserType}{The user type.}
}
\value{
A list with the following syntax:\preformatted{list(
  Invites = list(
    list(
      InviteId = "string",
      Status = "Pending"|"Accepted"|"Failed",
      EmailAddress = "string",
      EmailStatus = "NotSent"|"Sent"|"Failed"
    )
  )
)
}
}
\description{
Sends email to a maximum of 50 users, inviting them to the specified
Amazon Chime \code{Team} account. Only \code{Team} account types are currently
supported for this action.
}
\section{Request syntax}{
\preformatted{svc$invite_users(
  AccountId = "string",
  UserEmailList = list(
    "string"
  ),
  UserType = "PrivateUser"|"SharedDevice"
)
}
}

\keyword{internal}
