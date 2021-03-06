% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_stop_db_cluster}
\alias{rds_stop_db_cluster}
\title{Stops an Amazon Aurora DB cluster}
\usage{
rds_stop_db_cluster(DBClusterIdentifier)
}
\arguments{
\item{DBClusterIdentifier}{[required] The DB cluster identifier of the Amazon Aurora DB cluster to be stopped.
This parameter is stored as a lowercase string.}
}
\value{
A list with the following syntax:\preformatted{list(
  DBCluster = list(
    AllocatedStorage = 123,
    AvailabilityZones = list(
      "string"
    ),
    BackupRetentionPeriod = 123,
    CharacterSetName = "string",
    DatabaseName = "string",
    DBClusterIdentifier = "string",
    DBClusterParameterGroup = "string",
    DBSubnetGroup = "string",
    Status = "string",
    PercentProgress = "string",
    EarliestRestorableTime = as.POSIXct(
      "2015-01-01"
    ),
    Endpoint = "string",
    ReaderEndpoint = "string",
    CustomEndpoints = list(
      "string"
    ),
    MultiAZ = TRUE|FALSE,
    Engine = "string",
    EngineVersion = "string",
    LatestRestorableTime = as.POSIXct(
      "2015-01-01"
    ),
    Port = 123,
    MasterUsername = "string",
    DBClusterOptionGroupMemberships = list(
      list(
        DBClusterOptionGroupName = "string",
        Status = "string"
      )
    ),
    PreferredBackupWindow = "string",
    PreferredMaintenanceWindow = "string",
    ReplicationSourceIdentifier = "string",
    ReadReplicaIdentifiers = list(
      "string"
    ),
    DBClusterMembers = list(
      list(
        DBInstanceIdentifier = "string",
        IsClusterWriter = TRUE|FALSE,
        DBClusterParameterGroupStatus = "string",
        PromotionTier = 123
      )
    ),
    VpcSecurityGroups = list(
      list(
        VpcSecurityGroupId = "string",
        Status = "string"
      )
    ),
    HostedZoneId = "string",
    StorageEncrypted = TRUE|FALSE,
    KmsKeyId = "string",
    DbClusterResourceId = "string",
    DBClusterArn = "string",
    AssociatedRoles = list(
      list(
        RoleArn = "string",
        Status = "string",
        FeatureName = "string"
      )
    ),
    IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
    CloneGroupId = "string",
    ClusterCreateTime = as.POSIXct(
      "2015-01-01"
    ),
    EarliestBacktrackTime = as.POSIXct(
      "2015-01-01"
    ),
    BacktrackWindow = 123,
    BacktrackConsumedChangeRecords = 123,
    EnabledCloudwatchLogsExports = list(
      "string"
    ),
    Capacity = 123,
    EngineMode = "string",
    ScalingConfigurationInfo = list(
      MinCapacity = 123,
      MaxCapacity = 123,
      AutoPause = TRUE|FALSE,
      SecondsUntilAutoPause = 123,
      TimeoutAction = "string"
    ),
    DeletionProtection = TRUE|FALSE,
    HttpEndpointEnabled = TRUE|FALSE,
    ActivityStreamMode = "sync"|"async",
    ActivityStreamStatus = "stopped"|"starting"|"started"|"stopping",
    ActivityStreamKmsKeyId = "string",
    ActivityStreamKinesisStreamName = "string",
    CopyTagsToSnapshot = TRUE|FALSE,
    CrossAccountClone = TRUE|FALSE,
    DomainMemberships = list(
      list(
        Domain = "string",
        Status = "string",
        FQDN = "string",
        IAMRoleName = "string"
      )
    ),
    TagList = list(
      list(
        Key = "string",
        Value = "string"
      )
    ),
    GlobalWriteForwardingStatus = "enabled"|"disabled"|"enabling"|"disabling"|"unknown",
    GlobalWriteForwardingRequested = TRUE|FALSE,
    PendingModifiedValues = list(
      PendingCloudwatchLogsExports = list(
        LogTypesToEnable = list(
          "string"
        ),
        LogTypesToDisable = list(
          "string"
        )
      ),
      DBClusterIdentifier = "string",
      MasterUserPassword = "string",
      IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
      EngineVersion = "string"
    )
  )
)
}
}
\description{
Stops an Amazon Aurora DB cluster. When you stop a DB cluster, Aurora
retains the DB cluster's metadata, including its endpoints and DB
parameter groups. Aurora also retains the transaction logs so you can do
a point-in-time restore if necessary.

For more information, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html}{Stopping and Starting an Aurora Cluster}
in the \emph{Amazon Aurora User Guide.}

This action only applies to Aurora DB clusters.
}
\section{Request syntax}{
\preformatted{svc$stop_db_cluster(
  DBClusterIdentifier = "string"
)
}
}

\keyword{internal}
