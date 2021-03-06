% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/databasemigrationservice_operations.R
\name{databasemigrationservice_list_tags_for_resource}
\alias{databasemigrationservice_list_tags_for_resource}
\title{Lists all metadata tags attached to an AWS DMS resource, including
replication instance, endpoint, security group, and migration task}
\usage{
databasemigrationservice_list_tags_for_resource(ResourceArn)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) string that uniquely identifies the AWS
DMS resource.}
}
\value{
A list with the following syntax:\preformatted{list(
  TagList = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}
\description{
Lists all metadata tags attached to an AWS DMS resource, including
replication instance, endpoint, security group, and migration task. For
more information, see
\href{https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html}{\code{Tag}}
data type description.
}
\section{Request syntax}{
\preformatted{svc$list_tags_for_resource(
  ResourceArn = "string"
)
}
}

\examples{
\dontrun{
# Lists all tags for an AWS DMS resource.
svc$list_tags_for_resource(
  ResourceArn = ""
)
}

}
\keyword{internal}
