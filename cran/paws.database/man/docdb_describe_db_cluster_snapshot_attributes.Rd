% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docdb_operations.R
\name{docdb_describe_db_cluster_snapshot_attributes}
\alias{docdb_describe_db_cluster_snapshot_attributes}
\title{Returns a list of cluster snapshot attribute names and values for a
manual DB cluster snapshot}
\usage{
docdb_describe_db_cluster_snapshot_attributes(
  DBClusterSnapshotIdentifier)
}
\arguments{
\item{DBClusterSnapshotIdentifier}{[required] The identifier for the cluster snapshot to describe the attributes for.}
}
\value{
A list with the following syntax:\preformatted{list(
  DBClusterSnapshotAttributesResult = list(
    DBClusterSnapshotIdentifier = "string",
    DBClusterSnapshotAttributes = list(
      list(
        AttributeName = "string",
        AttributeValues = list(
          "string"
        )
      )
    )
  )
)
}
}
\description{
Returns a list of cluster snapshot attribute names and values for a
manual DB cluster snapshot.

When you share snapshots with other AWS accounts,
\code{\link[=docdb_describe_db_cluster_snapshot_attributes]{describe_db_cluster_snapshot_attributes}}
returns the \code{restore} attribute and a list of IDs for the AWS accounts
that are authorized to copy or restore the manual cluster snapshot. If
\code{all} is included in the list of values for the \code{restore} attribute,
then the manual cluster snapshot is public and can be copied or restored
by all AWS accounts.
}
\section{Request syntax}{
\preformatted{svc$describe_db_cluster_snapshot_attributes(
  DBClusterSnapshotIdentifier = "string"
)
}
}

\keyword{internal}
