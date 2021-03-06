% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_get_integration}
\alias{apigateway_get_integration}
\title{Get the integration settings}
\usage{
apigateway_get_integration(restApiId, resourceId, httpMethod)
}
\arguments{
\item{restApiId}{[required] [Required] The string identifier of the associated RestApi.}

\item{resourceId}{[required] [Required] Specifies a get integration request's resource identifier}

\item{httpMethod}{[required] [Required] Specifies a get integration request's HTTP method.}
}
\value{
A list with the following syntax:\preformatted{list(
  type = "HTTP"|"AWS"|"MOCK"|"HTTP_PROXY"|"AWS_PROXY",
  httpMethod = "string",
  uri = "string",
  connectionType = "INTERNET"|"VPC_LINK",
  connectionId = "string",
  credentials = "string",
  requestParameters = list(
    "string"
  ),
  requestTemplates = list(
    "string"
  ),
  passthroughBehavior = "string",
  contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT",
  timeoutInMillis = 123,
  cacheNamespace = "string",
  cacheKeyParameters = list(
    "string"
  ),
  integrationResponses = list(
    list(
      statusCode = "string",
      selectionPattern = "string",
      responseParameters = list(
        "string"
      ),
      responseTemplates = list(
        "string"
      ),
      contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT"
    )
  ),
  tlsConfig = list(
    insecureSkipVerification = TRUE|FALSE
  )
)
}
}
\description{
Get the integration settings.
}
\section{Request syntax}{
\preformatted{svc$get_integration(
  restApiId = "string",
  resourceId = "string",
  httpMethod = "string"
)
}
}

\keyword{internal}
