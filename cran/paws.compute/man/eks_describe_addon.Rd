% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eks_operations.R
\name{eks_describe_addon}
\alias{eks_describe_addon}
\title{Describes an Amazon EKS add-on}
\usage{
eks_describe_addon(clusterName, addonName)
}
\arguments{
\item{clusterName}{[required] The name of the cluster.}

\item{addonName}{[required] The name of the add-on. The name must match one of the names returned by
\href{https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html}{\code{list_addons}}
.}
}
\value{
A list with the following syntax:\preformatted{list(
  addon = list(
    addonName = "string",
    clusterName = "string",
    status = "CREATING"|"ACTIVE"|"CREATE_FAILED"|"UPDATING"|"DELETING"|"DELETE_FAILED"|"DEGRADED",
    addonVersion = "string",
    health = list(
      issues = list(
        list(
          code = "AccessDenied"|"InternalFailure"|"ClusterUnreachable"|"InsufficientNumberOfReplicas"|"ConfigurationConflict",
          message = "string",
          resourceIds = list(
            "string"
          )
        )
      )
    ),
    addonArn = "string",
    createdAt = as.POSIXct(
      "2015-01-01"
    ),
    modifiedAt = as.POSIXct(
      "2015-01-01"
    ),
    serviceAccountRoleArn = "string",
    tags = list(
      "string"
    )
  )
)
}
}
\description{
Describes an Amazon EKS add-on.
}
\section{Request syntax}{
\preformatted{svc$describe_addon(
  clusterName = "string",
  addonName = "string"
)
}
}

\keyword{internal}
