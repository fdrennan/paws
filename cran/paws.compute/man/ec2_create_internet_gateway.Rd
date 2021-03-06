% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_internet_gateway}
\alias{ec2_create_internet_gateway}
\title{Creates an internet gateway for use with a VPC}
\usage{
ec2_create_internet_gateway(TagSpecifications, DryRun)
}
\arguments{
\item{TagSpecifications}{The tags to assign to the internet gateway.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\value{
A list with the following syntax:\preformatted{list(
  InternetGateway = list(
    Attachments = list(
      list(
        State = "attaching"|"attached"|"detaching"|"detached",
        VpcId = "string"
      )
    ),
    InternetGatewayId = "string",
    OwnerId = "string",
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
Creates an internet gateway for use with a VPC. After creating the
internet gateway, you attach it to a VPC using
\code{\link[=ec2_attach_internet_gateway]{attach_internet_gateway}}.

For more information about your VPC and internet gateway, see the
\href{https://docs.aws.amazon.com/vpc/latest/userguide/}{Amazon Virtual Private Cloud User Guide}.
}
\section{Request syntax}{
\preformatted{svc$create_internet_gateway(
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
  ),
  DryRun = TRUE|FALSE
)
}
}

\examples{
\dontrun{
# This example creates an Internet gateway.
svc$create_internet_gateway()
}

}
\keyword{internal}
