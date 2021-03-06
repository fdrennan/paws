% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_update_documentation_version}
\alias{apigateway_update_documentation_version}
\title{Update documentation version}
\usage{
apigateway_update_documentation_version(restApiId, documentationVersion,
  patchOperations)
}
\arguments{
\item{restApiId}{[required] [Required] The string identifier of the associated RestApi..}

\item{documentationVersion}{[required] [Required] The version identifier of the to-be-updated documentation
version.}

\item{patchOperations}{A list of update operations to be applied to the specified resource and
in the order specified in this list.}
}
\value{
A list with the following syntax:\preformatted{list(
  version = "string",
  createdDate = as.POSIXct(
    "2015-01-01"
  ),
  description = "string"
)
}
}
\description{
Update documentation version
}
\section{Request syntax}{
\preformatted{svc$update_documentation_version(
  restApiId = "string",
  documentationVersion = "string",
  patchOperations = list(
    list(
      op = "add"|"remove"|"replace"|"move"|"copy"|"test",
      path = "string",
      value = "string",
      from = "string"
    )
  )
)
}
}

\keyword{internal}
