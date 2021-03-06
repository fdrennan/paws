% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticache_operations.R
\name{elasticache_delete_replication_group}
\alias{elasticache_delete_replication_group}
\title{Deletes an existing replication group}
\usage{
elasticache_delete_replication_group(ReplicationGroupId,
  RetainPrimaryCluster, FinalSnapshotIdentifier)
}
\arguments{
\item{ReplicationGroupId}{[required] The identifier for the cluster to be deleted. This parameter is not case
sensitive.}

\item{RetainPrimaryCluster}{If set to \code{true}, all of the read replicas are deleted, but the primary
node is retained.}

\item{FinalSnapshotIdentifier}{The name of a final node group (shard) snapshot. ElastiCache creates the
snapshot from the primary node in the cluster, rather than one of the
replicas; this is to ensure that it captures the freshest data. After
the final snapshot is taken, the replication group is immediately
deleted.}
}
\value{
A list with the following syntax:\preformatted{list(
  ReplicationGroup = list(
    ReplicationGroupId = "string",
    Description = "string",
    GlobalReplicationGroupInfo = list(
      GlobalReplicationGroupId = "string",
      GlobalReplicationGroupMemberRole = "string"
    ),
    Status = "string",
    PendingModifiedValues = list(
      PrimaryClusterId = "string",
      AutomaticFailoverStatus = "enabled"|"disabled",
      Resharding = list(
        SlotMigration = list(
          ProgressPercentage = 123.0
        )
      ),
      AuthTokenStatus = "SETTING"|"ROTATING",
      UserGroups = list(
        UserGroupIdsToAdd = list(
          "string"
        ),
        UserGroupIdsToRemove = list(
          "string"
        )
      )
    ),
    MemberClusters = list(
      "string"
    ),
    NodeGroups = list(
      list(
        NodeGroupId = "string",
        Status = "string",
        PrimaryEndpoint = list(
          Address = "string",
          Port = 123
        ),
        ReaderEndpoint = list(
          Address = "string",
          Port = 123
        ),
        Slots = "string",
        NodeGroupMembers = list(
          list(
            CacheClusterId = "string",
            CacheNodeId = "string",
            ReadEndpoint = list(
              Address = "string",
              Port = 123
            ),
            PreferredAvailabilityZone = "string",
            PreferredOutpostArn = "string",
            CurrentRole = "string"
          )
        )
      )
    ),
    SnapshottingClusterId = "string",
    AutomaticFailover = "enabled"|"disabled"|"enabling"|"disabling",
    MultiAZ = "enabled"|"disabled",
    ConfigurationEndpoint = list(
      Address = "string",
      Port = 123
    ),
    SnapshotRetentionLimit = 123,
    SnapshotWindow = "string",
    ClusterEnabled = TRUE|FALSE,
    CacheNodeType = "string",
    AuthTokenEnabled = TRUE|FALSE,
    AuthTokenLastModifiedDate = as.POSIXct(
      "2015-01-01"
    ),
    TransitEncryptionEnabled = TRUE|FALSE,
    AtRestEncryptionEnabled = TRUE|FALSE,
    MemberClustersOutpostArns = list(
      "string"
    ),
    KmsKeyId = "string",
    ARN = "string",
    UserGroupIds = list(
      "string"
    )
  )
)
}
}
\description{
Deletes an existing replication group. By default, this operation
deletes the entire replication group, including the primary/primaries
and all of the read replicas. If the replication group has only one
primary, you can optionally delete only the read replicas, while
retaining the primary by setting \code{RetainPrimaryCluster=true}.

When you receive a successful response from this operation, Amazon
ElastiCache immediately begins deleting the selected resources; you
cannot cancel or revert this operation.

This operation is valid for Redis only.
}
\section{Request syntax}{
\preformatted{svc$delete_replication_group(
  ReplicationGroupId = "string",
  RetainPrimaryCluster = TRUE|FALSE,
  FinalSnapshotIdentifier = "string"
)
}
}

\keyword{internal}
