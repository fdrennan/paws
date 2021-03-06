% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_traffic_mirror_filters}
\alias{ec2_describe_traffic_mirror_filters}
\title{Describes one or more Traffic Mirror filters}
\usage{
ec2_describe_traffic_mirror_filters(TrafficMirrorFilterIds, DryRun,
  Filters, MaxResults, NextToken)
}
\arguments{
\item{TrafficMirrorFilterIds}{The ID of the Traffic Mirror filter.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{Filters}{One or more filters. The possible values are:
\itemize{
\item \code{description}: The Traffic Mirror filter description.
\item \code{traffic-mirror-filter-id}: The ID of the Traffic Mirror filter.
}}

\item{MaxResults}{The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned \code{nextToken}
value.}

\item{NextToken}{The token for the next page of results.}
}
\value{
A list with the following syntax:\preformatted{list(
  TrafficMirrorFilters = list(
    list(
      TrafficMirrorFilterId = "string",
      IngressFilterRules = list(
        list(
          TrafficMirrorFilterRuleId = "string",
          TrafficMirrorFilterId = "string",
          TrafficDirection = "ingress"|"egress",
          RuleNumber = 123,
          RuleAction = "accept"|"reject",
          Protocol = 123,
          DestinationPortRange = list(
            FromPort = 123,
            ToPort = 123
          ),
          SourcePortRange = list(
            FromPort = 123,
            ToPort = 123
          ),
          DestinationCidrBlock = "string",
          SourceCidrBlock = "string",
          Description = "string"
        )
      ),
      EgressFilterRules = list(
        list(
          TrafficMirrorFilterRuleId = "string",
          TrafficMirrorFilterId = "string",
          TrafficDirection = "ingress"|"egress",
          RuleNumber = 123,
          RuleAction = "accept"|"reject",
          Protocol = 123,
          DestinationPortRange = list(
            FromPort = 123,
            ToPort = 123
          ),
          SourcePortRange = list(
            FromPort = 123,
            ToPort = 123
          ),
          DestinationCidrBlock = "string",
          SourceCidrBlock = "string",
          Description = "string"
        )
      ),
      NetworkServices = list(
        "amazon-dns"
      ),
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
  ),
  NextToken = "string"
)
}
}
\description{
Describes one or more Traffic Mirror filters.
}
\section{Request syntax}{
\preformatted{svc$describe_traffic_mirror_filters(
  TrafficMirrorFilterIds = list(
    "string"
  ),
  DryRun = TRUE|FALSE,
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  ),
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
