% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticsearchservice_operations.R
\name{elasticsearchservice_delete_outbound_cross_cluster_search_connection}
\alias{elasticsearchservice_delete_outbound_cross_cluster_search_connection}
\title{Allows the source domain owner to delete an existing outbound
cross-cluster search connection}
\usage{
elasticsearchservice_delete_outbound_cross_cluster_search_connection(
  CrossClusterSearchConnectionId)
}
\arguments{
\item{CrossClusterSearchConnectionId}{[required] The id of the outbound connection that you want to permanently delete.}
}
\value{
A list with the following syntax:\preformatted{list(
  CrossClusterSearchConnection = list(
    SourceDomainInfo = list(
      OwnerId = "string",
      DomainName = "string",
      Region = "string"
    ),
    DestinationDomainInfo = list(
      OwnerId = "string",
      DomainName = "string",
      Region = "string"
    ),
    CrossClusterSearchConnectionId = "string",
    ConnectionAlias = "string",
    ConnectionStatus = list(
      StatusCode = "PENDING_ACCEPTANCE"|"VALIDATING"|"VALIDATION_FAILED"|"PROVISIONING"|"ACTIVE"|"REJECTED"|"DELETING"|"DELETED",
      Message = "string"
    )
  )
)
}
}
\description{
Allows the source domain owner to delete an existing outbound
cross-cluster search connection.
}
\section{Request syntax}{
\preformatted{svc$delete_outbound_cross_cluster_search_connection(
  CrossClusterSearchConnectionId = "string"
)
}
}

\keyword{internal}
