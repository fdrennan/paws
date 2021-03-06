% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lambda_operations.R
\name{lambda_remove_layer_version_permission}
\alias{lambda_remove_layer_version_permission}
\title{Removes a statement from the permissions policy for a version of an AWS
Lambda layer}
\usage{
lambda_remove_layer_version_permission(LayerName, VersionNumber,
  StatementId, RevisionId)
}
\arguments{
\item{LayerName}{[required] The name or Amazon Resource Name (ARN) of the layer.}

\item{VersionNumber}{[required] The version number.}

\item{StatementId}{[required] The identifier that was specified when the statement was added.}

\item{RevisionId}{Only update the policy if the revision ID matches the ID specified. Use
this option to avoid modifying a policy that has changed since you last
read it.}
}
\value{
An empty list.
}
\description{
Removes a statement from the permissions policy for a version of an \href{https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html}{AWS Lambda layer}.
For more information, see
\code{\link[=lambda_add_layer_version_permission]{add_layer_version_permission}}.
}
\section{Request syntax}{
\preformatted{svc$remove_layer_version_permission(
  LayerName = "string",
  VersionNumber = 123,
  StatementId = "string",
  RevisionId = "string"
)
}
}

\examples{
\dontrun{
# The following example deletes permission for an account to configure a
# layer version.
svc$remove_layer_version_permission(
  LayerName = "my-layer",
  StatementId = "xaccount",
  VersionNumber = 1L
)
}

}
\keyword{internal}
