% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_coip_pools}
\alias{ec2_describe_coip_pools}
\title{Describes the specified customer-owned address pools or all of your
customer-owned address pools}
\usage{
ec2_describe_coip_pools(PoolIds, Filters, MaxResults, NextToken, DryRun)
}
\arguments{
\item{PoolIds}{The IDs of the address pools.}

\item{Filters}{The filters. The following are the possible values:
\itemize{
\item \code{coip-pool.pool-id}
\item \code{coip-pool.local-gateway-route-table-id}
}}

\item{MaxResults}{The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned \code{nextToken}
value.}

\item{NextToken}{The token for the next page of results.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\value{
A list with the following syntax:\preformatted{list(
  CoipPools = list(
    list(
      PoolId = "string",
      PoolCidrs = list(
        "string"
      ),
      LocalGatewayRouteTableId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      PoolArn = "string"
    )
  ),
  NextToken = "string"
)
}
}
\description{
Describes the specified customer-owned address pools or all of your
customer-owned address pools.
}
\section{Request syntax}{
\preformatted{svc$describe_coip_pools(
  PoolIds = list(
    "string"
  ),
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  ),
  MaxResults = 123,
  NextToken = "string",
  DryRun = TRUE|FALSE
)
}
}

\keyword{internal}
