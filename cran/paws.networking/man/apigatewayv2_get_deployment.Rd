% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigatewayv2_operations.R
\name{apigatewayv2_get_deployment}
\alias{apigatewayv2_get_deployment}
\title{Gets a Deployment}
\usage{
apigatewayv2_get_deployment(ApiId, DeploymentId)
}
\arguments{
\item{ApiId}{[required] The API identifier.}

\item{DeploymentId}{[required] The deployment ID.}
}
\value{
A list with the following syntax:\preformatted{list(
  AutoDeployed = TRUE|FALSE,
  CreatedDate = as.POSIXct(
    "2015-01-01"
  ),
  DeploymentId = "string",
  DeploymentStatus = "PENDING"|"FAILED"|"DEPLOYED",
  DeploymentStatusMessage = "string",
  Description = "string"
)
}
}
\description{
Gets a Deployment.
}
\section{Request syntax}{
\preformatted{svc$get_deployment(
  ApiId = "string",
  DeploymentId = "string"
)
}
}

\keyword{internal}
