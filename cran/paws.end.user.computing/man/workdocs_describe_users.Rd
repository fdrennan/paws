% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workdocs_operations.R
\name{workdocs_describe_users}
\alias{workdocs_describe_users}
\title{Describes the specified users}
\usage{
workdocs_describe_users(AuthenticationToken, OrganizationId, UserIds,
  Query, Include, Order, Sort, Marker, Limit, Fields)
}
\arguments{
\item{AuthenticationToken}{Amazon WorkDocs authentication token. Not required when using AWS
administrator credentials to access the API.}

\item{OrganizationId}{The ID of the organization.}

\item{UserIds}{The IDs of the users.}

\item{Query}{A query to filter users by user name.}

\item{Include}{The state of the users. Specify "ALL" to include inactive users.}

\item{Order}{The order for the results.}

\item{Sort}{The sorting criteria.}

\item{Marker}{The marker for the next set of results. (You received this marker from a
previous call.)}

\item{Limit}{The maximum number of items to return.}

\item{Fields}{A comma-separated list of values. Specify "STORAGE_METADATA" to include
the user storage quota and utilization information.}
}
\value{
A list with the following syntax:\preformatted{list(
  Users = list(
    list(
      Id = "string",
      Username = "string",
      EmailAddress = "string",
      GivenName = "string",
      Surname = "string",
      OrganizationId = "string",
      RootFolderId = "string",
      RecycleBinFolderId = "string",
      Status = "ACTIVE"|"INACTIVE"|"PENDING",
      Type = "USER"|"ADMIN"|"POWERUSER"|"MINIMALUSER"|"WORKSPACESUSER",
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      ModifiedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      TimeZoneId = "string",
      Locale = "en"|"fr"|"ko"|"de"|"es"|"ja"|"ru"|"zh_CN"|"zh_TW"|"pt_BR"|"default",
      Storage = list(
        StorageUtilizedInBytes = 123,
        StorageRule = list(
          StorageAllocatedInBytes = 123,
          StorageType = "UNLIMITED"|"QUOTA"
        )
      )
    )
  ),
  TotalNumberOfUsers = 123,
  Marker = "string"
)
}
}
\description{
Describes the specified users. You can describe all users or filter the
results (for example, by status or organization).

By default, Amazon WorkDocs returns the first 24 active or pending
users. If there are more results, the response includes a marker that
you can use to request the next set of results.
}
\section{Request syntax}{
\preformatted{svc$describe_users(
  AuthenticationToken = "string",
  OrganizationId = "string",
  UserIds = "string",
  Query = "string",
  Include = "ALL"|"ACTIVE_PENDING",
  Order = "ASCENDING"|"DESCENDING",
  Sort = "USER_NAME"|"FULL_NAME"|"STORAGE_LIMIT"|"USER_STATUS"|"STORAGE_USED",
  Marker = "string",
  Limit = 123,
  Fields = "string"
)
}
}

\keyword{internal}
