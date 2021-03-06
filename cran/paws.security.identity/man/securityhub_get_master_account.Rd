% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/securityhub_operations.R
\name{securityhub_get_master_account}
\alias{securityhub_get_master_account}
\title{Provides the details for the Security Hub master account for the current
member account}
\usage{
securityhub_get_master_account()
}
\value{
A list with the following syntax:\preformatted{list(
  Master = list(
    AccountId = "string",
    InvitationId = "string",
    InvitedAt = as.POSIXct(
      "2015-01-01"
    ),
    MemberStatus = "string"
  )
)
}
}
\description{
Provides the details for the Security Hub master account for the current
member account.

Can be used by both member accounts that are in an organization and
accounts that were invited manually.
}
\section{Request syntax}{
\preformatted{svc$get_master_account()
}
}

\keyword{internal}
