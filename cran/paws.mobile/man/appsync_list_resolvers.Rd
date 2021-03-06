% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appsync_operations.R
\name{appsync_list_resolvers}
\alias{appsync_list_resolvers}
\title{Lists the resolvers for a given API and type}
\usage{
appsync_list_resolvers(apiId, typeName, nextToken, maxResults)
}
\arguments{
\item{apiId}{[required] The API ID.}

\item{typeName}{[required] The type name.}

\item{nextToken}{An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.}

\item{maxResults}{The maximum number of results you want the request to return.}
}
\value{
A list with the following syntax:\preformatted{list(
  resolvers = list(
    list(
      typeName = "string",
      fieldName = "string",
      dataSourceName = "string",
      resolverArn = "string",
      requestMappingTemplate = "string",
      responseMappingTemplate = "string",
      kind = "UNIT"|"PIPELINE",
      pipelineConfig = list(
        functions = list(
          "string"
        )
      ),
      syncConfig = list(
        conflictHandler = "OPTIMISTIC_CONCURRENCY"|"LAMBDA"|"AUTOMERGE"|"NONE",
        conflictDetection = "VERSION"|"NONE",
        lambdaConflictHandlerConfig = list(
          lambdaConflictHandlerArn = "string"
        )
      ),
      cachingConfig = list(
        ttl = 123,
        cachingKeys = list(
          "string"
        )
      )
    )
  ),
  nextToken = "string"
)
}
}
\description{
Lists the resolvers for a given API and type.
}
\section{Request syntax}{
\preformatted{svc$list_resolvers(
  apiId = "string",
  typeName = "string",
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}
