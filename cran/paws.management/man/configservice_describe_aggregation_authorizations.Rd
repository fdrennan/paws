% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/configservice_operations.R
\name{configservice_describe_aggregation_authorizations}
\alias{configservice_describe_aggregation_authorizations}
\title{Returns a list of authorizations granted to various aggregator accounts
and regions}
\usage{
configservice_describe_aggregation_authorizations(Limit, NextToken)
}
\arguments{
\item{Limit}{The maximum number of AggregationAuthorizations returned on each page.
The default is maximum. If you specify 0, AWS Config uses the default.}

\item{NextToken}{The \code{nextToken} string returned on a previous page that you use to get
the next page of results in a paginated response.}
}
\value{
A list with the following syntax:\preformatted{list(
  AggregationAuthorizations = list(
    list(
      AggregationAuthorizationArn = "string",
      AuthorizedAccountId = "string",
      AuthorizedAwsRegion = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      )
    )
  ),
  NextToken = "string"
)
}
}
\description{
Returns a list of authorizations granted to various aggregator accounts
and regions.
}
\section{Request syntax}{
\preformatted{svc$describe_aggregation_authorizations(
  Limit = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
