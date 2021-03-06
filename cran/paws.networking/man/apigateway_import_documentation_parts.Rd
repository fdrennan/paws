% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_import_documentation_parts}
\alias{apigateway_import_documentation_parts}
\title{Import documentation parts}
\usage{
apigateway_import_documentation_parts(restApiId, mode, failOnWarnings,
  body)
}
\arguments{
\item{restApiId}{[required] [Required] The string identifier of the associated RestApi.}

\item{mode}{A query parameter to indicate whether to overwrite (\code{OVERWRITE}) any
existing DocumentationParts definition or to merge (\code{MERGE}) the new
definition into the existing one. The default value is \code{MERGE}.}

\item{failOnWarnings}{A query parameter to specify whether to rollback the documentation
importation (\code{true}) or not (\code{false}) when a warning is encountered. The
default value is \code{false}.}

\item{body}{[required] [Required] Raw byte array representing the to-be-imported
documentation parts. To import from an OpenAPI file, this is a JSON
object.}
}
\value{
A list with the following syntax:\preformatted{list(
  ids = list(
    "string"
  ),
  warnings = list(
    "string"
  )
)
}
}
\description{
Import documentation parts
}
\section{Request syntax}{
\preformatted{svc$import_documentation_parts(
  restApiId = "string",
  mode = "merge"|"overwrite",
  failOnWarnings = TRUE|FALSE,
  body = raw
)
}
}

\keyword{internal}
