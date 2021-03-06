% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_delete_model}
\alias{apigateway_delete_model}
\title{Deletes a model}
\usage{
apigateway_delete_model(restApiId, modelName)
}
\arguments{
\item{restApiId}{[required] [Required] The string identifier of the associated RestApi.}

\item{modelName}{[required] [Required] The name of the model to delete.}
}
\value{
An empty list.
}
\description{
Deletes a model.
}
\section{Request syntax}{
\preformatted{svc$delete_model(
  restApiId = "string",
  modelName = "string"
)
}
}

\keyword{internal}
