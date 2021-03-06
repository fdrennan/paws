% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/databasemigrationservice_operations.R
\name{databasemigrationservice_describe_refresh_schemas_status}
\alias{databasemigrationservice_describe_refresh_schemas_status}
\title{Returns the status of the RefreshSchemas operation}
\usage{
databasemigrationservice_describe_refresh_schemas_status(EndpointArn)
}
\arguments{
\item{EndpointArn}{[required] The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.}
}
\value{
A list with the following syntax:\preformatted{list(
  RefreshSchemasStatus = list(
    EndpointArn = "string",
    ReplicationInstanceArn = "string",
    Status = "successful"|"failed"|"refreshing",
    LastRefreshDate = as.POSIXct(
      "2015-01-01"
    ),
    LastFailureMessage = "string"
  )
)
}
}
\description{
Returns the status of the RefreshSchemas operation.
}
\section{Request syntax}{
\preformatted{svc$describe_refresh_schemas_status(
  EndpointArn = "string"
)
}
}

\examples{
\dontrun{
# Returns the status of the refresh-schemas operation.
svc$describe_refresh_schemas_status(
  EndpointArn = ""
)
}

}
\keyword{internal}
