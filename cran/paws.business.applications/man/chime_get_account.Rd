% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_get_account}
\alias{chime_get_account}
\title{Retrieves details for the specified Amazon Chime account, such as
account type and supported licenses}
\usage{
chime_get_account(AccountId)
}
\arguments{
\item{AccountId}{[required] The Amazon Chime account ID.}
}
\value{
A list with the following syntax:\preformatted{list(
  Account = list(
    AwsAccountId = "string",
    AccountId = "string",
    Name = "string",
    AccountType = "Team"|"EnterpriseDirectory"|"EnterpriseLWA"|"EnterpriseOIDC",
    CreatedTimestamp = as.POSIXct(
      "2015-01-01"
    ),
    DefaultLicense = "Basic"|"Plus"|"Pro"|"ProTrial",
    SupportedLicenses = list(
      "Basic"|"Plus"|"Pro"|"ProTrial"
    ),
    SigninDelegateGroups = list(
      list(
        GroupName = "string"
      )
    )
  )
)
}
}
\description{
Retrieves details for the specified Amazon Chime account, such as
account type and supported licenses.
}
\section{Request syntax}{
\preformatted{svc$get_account(
  AccountId = "string"
)
}
}

\keyword{internal}
