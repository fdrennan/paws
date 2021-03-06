% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appsync_operations.R
\name{appsync_get_function}
\alias{appsync_get_function}
\title{Get a Function}
\usage{
appsync_get_function(apiId, functionId)
}
\arguments{
\item{apiId}{[required] The GraphQL API ID.}

\item{functionId}{[required] The \code{Function} ID.}
}
\value{
A list with the following syntax:\preformatted{list(
  functionConfiguration = list(
    functionId = "string",
    functionArn = "string",
    name = "string",
    description = "string",
    dataSourceName = "string",
    requestMappingTemplate = "string",
    responseMappingTemplate = "string",
    functionVersion = "string"
  )
)
}
}
\description{
Get a \code{Function}.
}
\section{Request syntax}{
\preformatted{svc$get_function(
  apiId = "string",
  functionId = "string"
)
}
}

\keyword{internal}
