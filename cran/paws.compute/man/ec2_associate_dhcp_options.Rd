% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_associate_dhcp_options}
\alias{ec2_associate_dhcp_options}
\title{Associates a set of DHCP options (that you've previously created) with
the specified VPC, or associates no DHCP options with the VPC}
\usage{
ec2_associate_dhcp_options(DhcpOptionsId, VpcId, DryRun)
}
\arguments{
\item{DhcpOptionsId}{[required] The ID of the DHCP options set, or \code{default} to associate no DHCP
options with the VPC.}

\item{VpcId}{[required] The ID of the VPC.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\value{
An empty list.
}
\description{
Associates a set of DHCP options (that you've previously created) with
the specified VPC, or associates no DHCP options with the VPC.

After you associate the options with the VPC, any existing instances and
all new instances that you launch in that VPC use the options. You don't
need to restart or relaunch the instances. They automatically pick up
the changes within a few hours, depending on how frequently the instance
renews its DHCP lease. You can explicitly renew the lease using the
operating system on the instance.

For more information, see \href{https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html}{DHCP Options Sets}
in the \emph{Amazon Virtual Private Cloud User Guide}.
}
\section{Request syntax}{
\preformatted{svc$associate_dhcp_options(
  DhcpOptionsId = "string",
  VpcId = "string",
  DryRun = TRUE|FALSE
)
}
}

\examples{
\dontrun{
# This example associates the specified DHCP options set with the
# specified VPC.
svc$associate_dhcp_options(
  DhcpOptionsId = "dopt-d9070ebb",
  VpcId = "vpc-a01106c2"
)

# This example associates the default DHCP options set with the specified
# VPC.
svc$associate_dhcp_options(
  DhcpOptionsId = "default",
  VpcId = "vpc-a01106c2"
)
}

}
\keyword{internal}
