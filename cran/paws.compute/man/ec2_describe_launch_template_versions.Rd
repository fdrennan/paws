% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_launch_template_versions}
\alias{ec2_describe_launch_template_versions}
\title{Describes one or more versions of a specified launch template}
\usage{
ec2_describe_launch_template_versions(DryRun, LaunchTemplateId,
  LaunchTemplateName, Versions, MinVersion, MaxVersion, NextToken,
  MaxResults, Filters)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{LaunchTemplateId}{The ID of the launch template. To describe one or more versions of a
specified launch template, you must specify either the launch template
ID or the launch template name in the request. To describe all the
latest or default launch template versions in your account, you must
omit this parameter.}

\item{LaunchTemplateName}{The name of the launch template. To describe one or more versions of a
specified launch template, you must specify either the launch template
ID or the launch template name in the request. To describe all the
latest or default launch template versions in your account, you must
omit this parameter.}

\item{Versions}{One or more versions of the launch template. Valid values depend on
whether you are describing a specified launch template (by ID or name)
or all launch templates in your account.

To describe one or more versions of a specified launch template, valid
values are \verb{$Latest}, \verb{$Default}, and numbers.

To describe all launch templates in your account that are defined as the
latest version, the valid value is \verb{$Latest}. To describe all launch
templates in your account that are defined as the default version, the
valid value is \verb{$Default}. You can specify \verb{$Latest} and \verb{$Default} in
the same call. You cannot specify numbers.}

\item{MinVersion}{The version number after which to describe launch template versions.}

\item{MaxVersion}{The version number up to which to describe launch template versions.}

\item{NextToken}{The token to request the next page of results.}

\item{MaxResults}{The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned \code{NextToken}
value. This value can be between 1 and 200.}

\item{Filters}{One or more filters.
\itemize{
\item \code{create-time} - The time the launch template version was created.
\item \code{ebs-optimized} - A boolean that indicates whether the instance is
optimized for Amazon EBS I/O.
\item \code{iam-instance-profile} - The ARN of the IAM instance profile.
\item \code{image-id} - The ID of the AMI.
\item \code{instance-type} - The instance type.
\item \code{is-default-version} - A boolean that indicates whether the launch
template version is the default version.
\item \code{kernel-id} - The kernel ID.
\item \code{ram-disk-id} - The RAM disk ID.
}}
}
\value{
A list with the following syntax:\preformatted{list(
  LaunchTemplateVersions = list(
    list(
      LaunchTemplateId = "string",
      LaunchTemplateName = "string",
      VersionNumber = 123,
      VersionDescription = "string",
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBy = "string",
      DefaultVersion = TRUE|FALSE,
      LaunchTemplateData = list(
        KernelId = "string",
        EbsOptimized = TRUE|FALSE,
        IamInstanceProfile = list(
          Arn = "string",
          Name = "string"
        ),
        BlockDeviceMappings = list(
          list(
            DeviceName = "string",
            VirtualName = "string",
            Ebs = list(
              Encrypted = TRUE|FALSE,
              DeleteOnTermination = TRUE|FALSE,
              Iops = 123,
              KmsKeyId = "string",
              SnapshotId = "string",
              VolumeSize = 123,
              VolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
              Throughput = 123
            ),
            NoDevice = "string"
          )
        ),
        NetworkInterfaces = list(
          list(
            AssociateCarrierIpAddress = TRUE|FALSE,
            AssociatePublicIpAddress = TRUE|FALSE,
            DeleteOnTermination = TRUE|FALSE,
            Description = "string",
            DeviceIndex = 123,
            Groups = list(
              "string"
            ),
            InterfaceType = "string",
            Ipv6AddressCount = 123,
            Ipv6Addresses = list(
              list(
                Ipv6Address = "string"
              )
            ),
            NetworkInterfaceId = "string",
            PrivateIpAddress = "string",
            PrivateIpAddresses = list(
              list(
                Primary = TRUE|FALSE,
                PrivateIpAddress = "string"
              )
            ),
            SecondaryPrivateIpAddressCount = 123,
            SubnetId = "string",
            NetworkCardIndex = 123
          )
        ),
        ImageId = "string",
        InstanceType = "t1.micro"|"t2.nano"|"t2.micro"|"t2.small"|"t2.medium"|"t2.large"|"t2.xlarge"|"t2.2xlarge"|"t3.nano"|"t3.micro"|"t3.small"|"t3.medium"|"t3.large"|"t3.xlarge"|"t3.2xlarge"|"t3a.nano"|"t3a.micro"|"t3a.small"|"t3a.medium"|"t3a.large"|"t3a.xlarge"|"t3a.2xlarge"|"t4g.nano"|"t4g.micro"|"t4g.small"|"t4g.medium"|"t4g.large"|"t4g.xlarge"|"t4g.2xlarge"|"m1.small"|"m1.medium"|"m1.large"|"m1.xlarge"|"m3.medium"|"m3.large"|"m3.xlarge"|"m3.2xlarge"|"m4.large"|"m4.xlarge"|"m4.2xlarge"|"m4.4xlarge"|"m4.10xlarge"|"m4.16xlarge"|"m2.xlarge"|"m2.2xlarge"|"m2.4xlarge"|"cr1.8xlarge"|"r3.large"|"r3.xlarge"|"r3.2xlarge"|"r3.4xlarge"|"r3.8xlarge"|"r4.large"|"r4.xlarge"|"r4.2xlarge"|"r4.4xlarge"|"r4.8xlarge"|"r4.16xlarge"|"r5.large"|"r5.xlarge"|"r5.2xlarge"|"r5.4xlarge"|"r5.8xlarge"|"r5.12xlarge"|"r5.16xlarge"|"r5.24xlarge"|"r5.metal"|"r5a.large"|"r5a.xlarge"|"r5a.2xlarge"|"r5a.4xlarge"|"r5a.8xlarge"|"r5a.12xlarge"|"r5a.16xlarge"|"r5a.24xlarge"|"r5b.large"|"r5b.xlarge"|"r5b.2xlarge"|"r5b.4xlarge"|"r5b.8xlarge"|"r5b.12xlarge"|"r5b.16xlarge"|"r5b.24xlarge"|"r5b.metal"|"r5d.large"|"r5d.xlarge"|"r5d.2xlarge"|"r5d.4xlarge"|"r5d.8xlarge"|"r5d.12xlarge"|"r5d.16xlarge"|"r5d.24xlarge"|"r5d.metal"|"r5ad.large"|"r5ad.xlarge"|"r5ad.2xlarge"|"r5ad.4xlarge"|"r5ad.8xlarge"|"r5ad.12xlarge"|"r5ad.16xlarge"|"r5ad.24xlarge"|"r6g.metal"|"r6g.medium"|"r6g.large"|"r6g.xlarge"|"r6g.2xlarge"|"r6g.4xlarge"|"r6g.8xlarge"|"r6g.12xlarge"|"r6g.16xlarge"|"r6gd.metal"|"r6gd.medium"|"r6gd.large"|"r6gd.xlarge"|"r6gd.2xlarge"|"r6gd.4xlarge"|"r6gd.8xlarge"|"r6gd.12xlarge"|"r6gd.16xlarge"|"x1.16xlarge"|"x1.32xlarge"|"x1e.xlarge"|"x1e.2xlarge"|"x1e.4xlarge"|"x1e.8xlarge"|"x1e.16xlarge"|"x1e.32xlarge"|"i2.xlarge"|"i2.2xlarge"|"i2.4xlarge"|"i2.8xlarge"|"i3.large"|"i3.xlarge"|"i3.2xlarge"|"i3.4xlarge"|"i3.8xlarge"|"i3.16xlarge"|"i3.metal"|"i3en.large"|"i3en.xlarge"|"i3en.2xlarge"|"i3en.3xlarge"|"i3en.6xlarge"|"i3en.12xlarge"|"i3en.24xlarge"|"i3en.metal"|"hi1.4xlarge"|"hs1.8xlarge"|"c1.medium"|"c1.xlarge"|"c3.large"|"c3.xlarge"|"c3.2xlarge"|"c3.4xlarge"|"c3.8xlarge"|"c4.large"|"c4.xlarge"|"c4.2xlarge"|"c4.4xlarge"|"c4.8xlarge"|"c5.large"|"c5.xlarge"|"c5.2xlarge"|"c5.4xlarge"|"c5.9xlarge"|"c5.12xlarge"|"c5.18xlarge"|"c5.24xlarge"|"c5.metal"|"c5a.large"|"c5a.xlarge"|"c5a.2xlarge"|"c5a.4xlarge"|"c5a.8xlarge"|"c5a.12xlarge"|"c5a.16xlarge"|"c5a.24xlarge"|"c5ad.large"|"c5ad.xlarge"|"c5ad.2xlarge"|"c5ad.4xlarge"|"c5ad.8xlarge"|"c5ad.12xlarge"|"c5ad.16xlarge"|"c5ad.24xlarge"|"c5d.large"|"c5d.xlarge"|"c5d.2xlarge"|"c5d.4xlarge"|"c5d.9xlarge"|"c5d.12xlarge"|"c5d.18xlarge"|"c5d.24xlarge"|"c5d.metal"|"c5n.large"|"c5n.xlarge"|"c5n.2xlarge"|"c5n.4xlarge"|"c5n.9xlarge"|"c5n.18xlarge"|"c5n.metal"|"c6g.metal"|"c6g.medium"|"c6g.large"|"c6g.xlarge"|"c6g.2xlarge"|"c6g.4xlarge"|"c6g.8xlarge"|"c6g.12xlarge"|"c6g.16xlarge"|"c6gd.metal"|"c6gd.medium"|"c6gd.large"|"c6gd.xlarge"|"c6gd.2xlarge"|"c6gd.4xlarge"|"c6gd.8xlarge"|"c6gd.12xlarge"|"c6gd.16xlarge"|"c6gn.medium"|"c6gn.large"|"c6gn.xlarge"|"c6gn.2xlarge"|"c6gn.4xlarge"|"c6gn.8xlarge"|"c6gn.12xlarge"|"c6gn.16xlarge"|"cc1.4xlarge"|"cc2.8xlarge"|"g2.2xlarge"|"g2.8xlarge"|"g3.4xlarge"|"g3.8xlarge"|"g3.16xlarge"|"g3s.xlarge"|"g4ad.4xlarge"|"g4ad.8xlarge"|"g4ad.16xlarge"|"g4dn.xlarge"|"g4dn.2xlarge"|"g4dn.4xlarge"|"g4dn.8xlarge"|"g4dn.12xlarge"|"g4dn.16xlarge"|"g4dn.metal"|"cg1.4xlarge"|"p2.xlarge"|"p2.8xlarge"|"p2.16xlarge"|"p3.2xlarge"|"p3.8xlarge"|"p3.16xlarge"|"p3dn.24xlarge"|"p4d.24xlarge"|"d2.xlarge"|"d2.2xlarge"|"d2.4xlarge"|"d2.8xlarge"|"d3.xlarge"|"d3.2xlarge"|"d3.4xlarge"|"d3.8xlarge"|"d3en.xlarge"|"d3en.2xlarge"|"d3en.4xlarge"|"d3en.6xlarge"|"d3en.8xlarge"|"d3en.12xlarge"|"f1.2xlarge"|"f1.4xlarge"|"f1.16xlarge"|"m5.large"|"m5.xlarge"|"m5.2xlarge"|"m5.4xlarge"|"m5.8xlarge"|"m5.12xlarge"|"m5.16xlarge"|"m5.24xlarge"|"m5.metal"|"m5a.large"|"m5a.xlarge"|"m5a.2xlarge"|"m5a.4xlarge"|"m5a.8xlarge"|"m5a.12xlarge"|"m5a.16xlarge"|"m5a.24xlarge"|"m5d.large"|"m5d.xlarge"|"m5d.2xlarge"|"m5d.4xlarge"|"m5d.8xlarge"|"m5d.12xlarge"|"m5d.16xlarge"|"m5d.24xlarge"|"m5d.metal"|"m5ad.large"|"m5ad.xlarge"|"m5ad.2xlarge"|"m5ad.4xlarge"|"m5ad.8xlarge"|"m5ad.12xlarge"|"m5ad.16xlarge"|"m5ad.24xlarge"|"m5zn.large"|"m5zn.xlarge"|"m5zn.2xlarge"|"m5zn.3xlarge"|"m5zn.6xlarge"|"m5zn.12xlarge"|"m5zn.metal"|"h1.2xlarge"|"h1.4xlarge"|"h1.8xlarge"|"h1.16xlarge"|"z1d.large"|"z1d.xlarge"|"z1d.2xlarge"|"z1d.3xlarge"|"z1d.6xlarge"|"z1d.12xlarge"|"z1d.metal"|"u-6tb1.metal"|"u-9tb1.metal"|"u-12tb1.metal"|"u-18tb1.metal"|"u-24tb1.metal"|"a1.medium"|"a1.large"|"a1.xlarge"|"a1.2xlarge"|"a1.4xlarge"|"a1.metal"|"m5dn.large"|"m5dn.xlarge"|"m5dn.2xlarge"|"m5dn.4xlarge"|"m5dn.8xlarge"|"m5dn.12xlarge"|"m5dn.16xlarge"|"m5dn.24xlarge"|"m5n.large"|"m5n.xlarge"|"m5n.2xlarge"|"m5n.4xlarge"|"m5n.8xlarge"|"m5n.12xlarge"|"m5n.16xlarge"|"m5n.24xlarge"|"r5dn.large"|"r5dn.xlarge"|"r5dn.2xlarge"|"r5dn.4xlarge"|"r5dn.8xlarge"|"r5dn.12xlarge"|"r5dn.16xlarge"|"r5dn.24xlarge"|"r5n.large"|"r5n.xlarge"|"r5n.2xlarge"|"r5n.4xlarge"|"r5n.8xlarge"|"r5n.12xlarge"|"r5n.16xlarge"|"r5n.24xlarge"|"inf1.xlarge"|"inf1.2xlarge"|"inf1.6xlarge"|"inf1.24xlarge"|"m6g.metal"|"m6g.medium"|"m6g.large"|"m6g.xlarge"|"m6g.2xlarge"|"m6g.4xlarge"|"m6g.8xlarge"|"m6g.12xlarge"|"m6g.16xlarge"|"m6gd.metal"|"m6gd.medium"|"m6gd.large"|"m6gd.xlarge"|"m6gd.2xlarge"|"m6gd.4xlarge"|"m6gd.8xlarge"|"m6gd.12xlarge"|"m6gd.16xlarge"|"mac1.metal",
        KeyName = "string",
        Monitoring = list(
          Enabled = TRUE|FALSE
        ),
        Placement = list(
          AvailabilityZone = "string",
          Affinity = "string",
          GroupName = "string",
          HostId = "string",
          Tenancy = "default"|"dedicated"|"host",
          SpreadDomain = "string",
          HostResourceGroupArn = "string",
          PartitionNumber = 123
        ),
        RamDiskId = "string",
        DisableApiTermination = TRUE|FALSE,
        InstanceInitiatedShutdownBehavior = "stop"|"terminate",
        UserData = "string",
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
        ElasticGpuSpecifications = list(
          list(
            Type = "string"
          )
        ),
        ElasticInferenceAccelerators = list(
          list(
            Type = "string",
            Count = 123
          )
        ),
        SecurityGroupIds = list(
          "string"
        ),
        SecurityGroups = list(
          "string"
        ),
        InstanceMarketOptions = list(
          MarketType = "spot",
          SpotOptions = list(
            MaxPrice = "string",
            SpotInstanceType = "one-time"|"persistent",
            BlockDurationMinutes = 123,
            ValidUntil = as.POSIXct(
              "2015-01-01"
            ),
            InstanceInterruptionBehavior = "hibernate"|"stop"|"terminate"
          )
        ),
        CreditSpecification = list(
          CpuCredits = "string"
        ),
        CpuOptions = list(
          CoreCount = 123,
          ThreadsPerCore = 123
        ),
        CapacityReservationSpecification = list(
          CapacityReservationPreference = "open"|"none",
          CapacityReservationTarget = list(
            CapacityReservationId = "string",
            CapacityReservationResourceGroupArn = "string"
          )
        ),
        LicenseSpecifications = list(
          list(
            LicenseConfigurationArn = "string"
          )
        ),
        HibernationOptions = list(
          Configured = TRUE|FALSE
        ),
        MetadataOptions = list(
          State = "pending"|"applied",
          HttpTokens = "optional"|"required",
          HttpPutResponseHopLimit = 123,
          HttpEndpoint = "disabled"|"enabled"
        ),
        EnclaveOptions = list(
          Enabled = TRUE|FALSE
        )
      )
    )
  ),
  NextToken = "string"
)
}
}
\description{
Describes one or more versions of a specified launch template. You can
describe all versions, individual versions, or a range of versions. You
can also describe all the latest versions or all the default versions of
all the launch templates in your account.
}
\section{Request syntax}{
\preformatted{svc$describe_launch_template_versions(
  DryRun = TRUE|FALSE,
  LaunchTemplateId = "string",
  LaunchTemplateName = "string",
  Versions = list(
    "string"
  ),
  MinVersion = "string",
  MaxVersion = "string",
  NextToken = "string",
  MaxResults = 123,
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  )
)
}
}

\examples{
\dontrun{
# This example describes the versions for the specified launch template.
svc$describe_launch_template_versions(
  LaunchTemplateId = "068f72b72934aff71"
)
}

}
\keyword{internal}
