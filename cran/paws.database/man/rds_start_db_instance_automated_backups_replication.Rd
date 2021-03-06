% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_start_db_instance_automated_backups_replication}
\alias{rds_start_db_instance_automated_backups_replication}
\title{Enables replication of automated backups to a different AWS Region}
\usage{
rds_start_db_instance_automated_backups_replication(SourceDBInstanceArn,
  BackupRetentionPeriod, KmsKeyId, PreSignedUrl)
}
\arguments{
\item{SourceDBInstanceArn}{[required] The Amazon Resource Name (ARN) of the source DB instance for the
replicated automated backups, for example,
\code{arn:aws:rds:us-west-2:123456789012:db:mydatabase}.}

\item{BackupRetentionPeriod}{The retention period for the replicated automated backups.}

\item{KmsKeyId}{The AWS KMS key identifier for encryption of the replicated automated
backups. The KMS key ID is the Amazon Resource Name (ARN) for the KMS
encryption key in the destination AWS Region, for example,
\code{arn:aws:kms:us-east-1:123456789012:key/AKIAIOSFODNN7EXAMPLE}.}

\item{PreSignedUrl}{A URL that contains a Signature Version 4 signed request for the
StartDBInstanceAutomatedBackupsReplication action to be called in the
AWS Region of the source DB instance. The presigned URL must be a valid
request for the StartDBInstanceAutomatedBackupsReplication API action
that can be executed in the AWS Region that contains the source DB
instance.}
}
\value{
A list with the following syntax:\preformatted{list(
  DBInstanceAutomatedBackup = list(
    DBInstanceArn = "string",
    DbiResourceId = "string",
    Region = "string",
    DBInstanceIdentifier = "string",
    RestoreWindow = list(
      EarliestTime = as.POSIXct(
        "2015-01-01"
      ),
      LatestTime = as.POSIXct(
        "2015-01-01"
      )
    ),
    AllocatedStorage = 123,
    Status = "string",
    Port = 123,
    AvailabilityZone = "string",
    VpcId = "string",
    InstanceCreateTime = as.POSIXct(
      "2015-01-01"
    ),
    MasterUsername = "string",
    Engine = "string",
    EngineVersion = "string",
    LicenseModel = "string",
    Iops = 123,
    OptionGroupName = "string",
    TdeCredentialArn = "string",
    Encrypted = TRUE|FALSE,
    StorageType = "string",
    KmsKeyId = "string",
    Timezone = "string",
    IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
    BackupRetentionPeriod = 123,
    DBInstanceAutomatedBackupsArn = "string",
    DBInstanceAutomatedBackupsReplications = list(
      list(
        DBInstanceAutomatedBackupsArn = "string"
      )
    )
  )
)
}
}
\description{
Enables replication of automated backups to a different AWS Region.

For more information, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html}{Replicating Automated Backups to Another AWS Region}
in the \emph{Amazon RDS User Guide.}
}
\section{Request syntax}{
\preformatted{svc$start_db_instance_automated_backups_replication(
  SourceDBInstanceArn = "string",
  BackupRetentionPeriod = 123,
  KmsKeyId = "string",
  PreSignedUrl = "string"
)
}
}

\keyword{internal}
