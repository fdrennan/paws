% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workmail_operations.R
\name{workmail_update_primary_email_address}
\alias{workmail_update_primary_email_address}
\title{Updates the primary email for a user, group, or resource}
\usage{
workmail_update_primary_email_address(OrganizationId, EntityId, Email)
}
\arguments{
\item{OrganizationId}{[required] The organization that contains the user, group, or resource to update.}

\item{EntityId}{[required] The user, group, or resource to update.}

\item{Email}{[required] The value of the email to be updated as primary.}
}
\value{
An empty list.
}
\description{
Updates the primary email for a user, group, or resource. The current
email is moved into the list of aliases (or swapped between an existing
alias and the current primary email), and the email provided in the
input is promoted as the primary.
}
\section{Request syntax}{
\preformatted{svc$update_primary_email_address(
  OrganizationId = "string",
  EntityId = "string",
  Email = "string"
)
}
}

\keyword{internal}
