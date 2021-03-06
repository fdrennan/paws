% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_placement_group}
\alias{ec2_create_placement_group}
\title{Creates a placement group in which to launch instances}
\usage{
ec2_create_placement_group(DryRun, GroupName, Strategy, PartitionCount,
  TagSpecifications)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{GroupName}{A name for the placement group. Must be unique within the scope of your
account for the Region.

Constraints: Up to 255 ASCII characters}

\item{Strategy}{The placement strategy.}

\item{PartitionCount}{The number of partitions. Valid only when \strong{Strategy} is set to
\code{partition}.}

\item{TagSpecifications}{The tags to apply to the new placement group.}
}
\value{
A list with the following syntax:\preformatted{list(
  PlacementGroup = list(
    GroupName = "string",
    State = "pending"|"available"|"deleting"|"deleted",
    Strategy = "cluster"|"spread"|"partition",
    PartitionCount = 123,
    GroupId = "string",
    Tags = list(
      list(
        Key = "string",
        Value = "string"
      )
    )
  )
)
}
}
\description{
Creates a placement group in which to launch instances. The strategy of
the placement group determines how the instances are organized within
the group.

A \code{cluster} placement group is a logical grouping of instances within a
single Availability Zone that benefit from low network latency, high
network throughput. A \code{spread} placement group places instances on
distinct hardware. A \code{partition} placement group places groups of
instances in different partitions, where instances in one partition do
not share the same hardware with instances in another partition.

For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html}{Placement groups}
in the \emph{Amazon Elastic Compute Cloud User Guide}.
}
\section{Request syntax}{
\preformatted{svc$create_placement_group(
  DryRun = TRUE|FALSE,
  GroupName = "string",
  Strategy = "cluster"|"spread"|"partition",
  PartitionCount = 123,
  TagSpecifications = list(
    list(
      ResourceType = "client-vpn-endpoint"|"customer-gateway"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"internet-gateway"|"key-pair"|"launch-template"|"local-gateway-route-table-vpc-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"placement-group"|"reserved-instances"|"route-table"|"security-group"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-route-table"|"volume"|"vpc"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
  )
)
}
}

\examples{
\dontrun{
# This example creates a placement group with the specified name.
svc$create_placement_group(
  GroupName = "my-cluster",
  Strategy = "cluster"
)
}

}
\keyword{internal}
