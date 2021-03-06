% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emr_operations.R
\name{emr_modify_cluster}
\alias{emr_modify_cluster}
\title{Modifies the number of steps that can be executed concurrently for the
cluster specified using ClusterID}
\usage{
emr_modify_cluster(ClusterId, StepConcurrencyLevel)
}
\arguments{
\item{ClusterId}{[required] The unique identifier of the cluster.}

\item{StepConcurrencyLevel}{The number of steps that can be executed concurrently. You can specify a
maximum of 256 steps.}
}
\value{
A list with the following syntax:\preformatted{list(
  StepConcurrencyLevel = 123
)
}
}
\description{
Modifies the number of steps that can be executed concurrently for the
cluster specified using ClusterID.
}
\section{Request syntax}{
\preformatted{svc$modify_cluster(
  ClusterId = "string",
  StepConcurrencyLevel = 123
)
}
}

\keyword{internal}
