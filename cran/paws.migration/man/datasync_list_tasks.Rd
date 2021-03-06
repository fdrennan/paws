% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datasync_operations.R
\name{datasync_list_tasks}
\alias{datasync_list_tasks}
\title{Returns a list of all the tasks}
\usage{
datasync_list_tasks(MaxResults, NextToken, Filters)
}
\arguments{
\item{MaxResults}{The maximum number of tasks to return.}

\item{NextToken}{An opaque string that indicates the position at which to begin the next
list of tasks.}

\item{Filters}{You can use API filters to narrow down the list of resources returned by
\code{\link[=datasync_list_tasks]{list_tasks}}. For example, to retrieve all tasks
on a specific source location, you can use
\code{\link[=datasync_list_tasks]{list_tasks}} with filter name \code{LocationId} and
\verb{Operator Equals} with the ARN for the location.}
}
\value{
A list with the following syntax:\preformatted{list(
  Tasks = list(
    list(
      TaskArn = "string",
      Status = "AVAILABLE"|"CREATING"|"QUEUED"|"RUNNING"|"UNAVAILABLE",
      Name = "string"
    )
  ),
  NextToken = "string"
)
}
}
\description{
Returns a list of all the tasks.
}
\section{Request syntax}{
\preformatted{svc$list_tasks(
  MaxResults = 123,
  NextToken = "string",
  Filters = list(
    list(
      Name = "LocationId"|"CreationTime",
      Values = list(
        "string"
      ),
      Operator = "Equals"|"NotEquals"|"In"|"LessThanOrEqual"|"LessThan"|"GreaterThanOrEqual"|"GreaterThan"|"Contains"|"NotContains"|"BeginsWith"
    )
  )
)
}
}

\keyword{internal}
