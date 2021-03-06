% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dynamodb_operations.R
\name{dynamodb_update_table}
\alias{dynamodb_update_table}
\title{Modifies the provisioned throughput settings, global secondary indexes,
or DynamoDB Streams settings for a given table}
\usage{
dynamodb_update_table(AttributeDefinitions, TableName, BillingMode,
  ProvisionedThroughput, GlobalSecondaryIndexUpdates, StreamSpecification,
  SSESpecification, ReplicaUpdates)
}
\arguments{
\item{AttributeDefinitions}{An array of attributes that describe the key schema for the table and
indexes. If you are adding a new global secondary index to the table,
\code{AttributeDefinitions} must include the key element(s) of the new index.}

\item{TableName}{[required] The name of the table to be updated.}

\item{BillingMode}{Controls how you are charged for read and write throughput and how you
manage capacity. When switching from pay-per-request to provisioned
capacity, initial provisioned capacity values must be set. The initial
provisioned capacity values are estimated based on the consumed read and
write capacity of your table and global secondary indexes over the past
30 minutes.
\itemize{
\item \code{PROVISIONED} - We recommend using \code{PROVISIONED} for predictable
workloads. \code{PROVISIONED} sets the billing mode to \href{https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual}{Provisioned Mode}.
\item \code{PAY_PER_REQUEST} - We recommend using \code{PAY_PER_REQUEST} for
unpredictable workloads. \code{PAY_PER_REQUEST} sets the billing mode to
\href{https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand}{On-Demand Mode}.
}}

\item{ProvisionedThroughput}{The new provisioned throughput settings for the specified table or
index.}

\item{GlobalSecondaryIndexUpdates}{An array of one or more global secondary indexes for the table. For each
index in the array, you can request one action:
\itemize{
\item \code{Create} - add a new global secondary index to the table.
\item \code{Update} - modify the provisioned throughput settings of an existing
global secondary index.
\item \code{Delete} - remove a global secondary index from the table.
}

You can create or delete only one global secondary index per
\code{\link[=dynamodb_update_table]{update_table}} operation.

For more information, see \href{https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html}{Managing Global Secondary Indexes}
in the \emph{Amazon DynamoDB Developer Guide}.}

\item{StreamSpecification}{Represents the DynamoDB Streams configuration for the table.

You receive a \code{ResourceInUseException} if you try to enable a stream on
a table that already has a stream, or if you try to disable a stream on
a table that doesn't have a stream.}

\item{SSESpecification}{The new server-side encryption settings for the specified table.}

\item{ReplicaUpdates}{A list of replica update actions (create, delete, or update) for the
table.

This property only applies to \href{https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html}{Version 2019.11.21}
of global tables.}
}
\value{
A list with the following syntax:\preformatted{list(
  TableDescription = list(
    AttributeDefinitions = list(
      list(
        AttributeName = "string",
        AttributeType = "S"|"N"|"B"
      )
    ),
    TableName = "string",
    KeySchema = list(
      list(
        AttributeName = "string",
        KeyType = "HASH"|"RANGE"
      )
    ),
    TableStatus = "CREATING"|"UPDATING"|"DELETING"|"ACTIVE"|"INACCESSIBLE_ENCRYPTION_CREDENTIALS"|"ARCHIVING"|"ARCHIVED",
    CreationDateTime = as.POSIXct(
      "2015-01-01"
    ),
    ProvisionedThroughput = list(
      LastIncreaseDateTime = as.POSIXct(
        "2015-01-01"
      ),
      LastDecreaseDateTime = as.POSIXct(
        "2015-01-01"
      ),
      NumberOfDecreasesToday = 123,
      ReadCapacityUnits = 123,
      WriteCapacityUnits = 123
    ),
    TableSizeBytes = 123,
    ItemCount = 123,
    TableArn = "string",
    TableId = "string",
    BillingModeSummary = list(
      BillingMode = "PROVISIONED"|"PAY_PER_REQUEST",
      LastUpdateToPayPerRequestDateTime = as.POSIXct(
        "2015-01-01"
      )
    ),
    LocalSecondaryIndexes = list(
      list(
        IndexName = "string",
        KeySchema = list(
          list(
            AttributeName = "string",
            KeyType = "HASH"|"RANGE"
          )
        ),
        Projection = list(
          ProjectionType = "ALL"|"KEYS_ONLY"|"INCLUDE",
          NonKeyAttributes = list(
            "string"
          )
        ),
        IndexSizeBytes = 123,
        ItemCount = 123,
        IndexArn = "string"
      )
    ),
    GlobalSecondaryIndexes = list(
      list(
        IndexName = "string",
        KeySchema = list(
          list(
            AttributeName = "string",
            KeyType = "HASH"|"RANGE"
          )
        ),
        Projection = list(
          ProjectionType = "ALL"|"KEYS_ONLY"|"INCLUDE",
          NonKeyAttributes = list(
            "string"
          )
        ),
        IndexStatus = "CREATING"|"UPDATING"|"DELETING"|"ACTIVE",
        Backfilling = TRUE|FALSE,
        ProvisionedThroughput = list(
          LastIncreaseDateTime = as.POSIXct(
            "2015-01-01"
          ),
          LastDecreaseDateTime = as.POSIXct(
            "2015-01-01"
          ),
          NumberOfDecreasesToday = 123,
          ReadCapacityUnits = 123,
          WriteCapacityUnits = 123
        ),
        IndexSizeBytes = 123,
        ItemCount = 123,
        IndexArn = "string"
      )
    ),
    StreamSpecification = list(
      StreamEnabled = TRUE|FALSE,
      StreamViewType = "NEW_IMAGE"|"OLD_IMAGE"|"NEW_AND_OLD_IMAGES"|"KEYS_ONLY"
    ),
    LatestStreamLabel = "string",
    LatestStreamArn = "string",
    GlobalTableVersion = "string",
    Replicas = list(
      list(
        RegionName = "string",
        ReplicaStatus = "CREATING"|"CREATION_FAILED"|"UPDATING"|"DELETING"|"ACTIVE"|"REGION_DISABLED"|"INACCESSIBLE_ENCRYPTION_CREDENTIALS",
        ReplicaStatusDescription = "string",
        ReplicaStatusPercentProgress = "string",
        KMSMasterKeyId = "string",
        ProvisionedThroughputOverride = list(
          ReadCapacityUnits = 123
        ),
        GlobalSecondaryIndexes = list(
          list(
            IndexName = "string",
            ProvisionedThroughputOverride = list(
              ReadCapacityUnits = 123
            )
          )
        ),
        ReplicaInaccessibleDateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    ),
    RestoreSummary = list(
      SourceBackupArn = "string",
      SourceTableArn = "string",
      RestoreDateTime = as.POSIXct(
        "2015-01-01"
      ),
      RestoreInProgress = TRUE|FALSE
    ),
    SSEDescription = list(
      Status = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"UPDATING",
      SSEType = "AES256"|"KMS",
      KMSMasterKeyArn = "string",
      InaccessibleEncryptionDateTime = as.POSIXct(
        "2015-01-01"
      )
    ),
    ArchivalSummary = list(
      ArchivalDateTime = as.POSIXct(
        "2015-01-01"
      ),
      ArchivalReason = "string",
      ArchivalBackupArn = "string"
    )
  )
)
}
}
\description{
Modifies the provisioned throughput settings, global secondary indexes,
or DynamoDB Streams settings for a given table.

You can only perform one of the following operations at once:
\itemize{
\item Modify the provisioned throughput settings of the table.
\item Enable or disable DynamoDB Streams on the table.
\item Remove a global secondary index from the table.
\item Create a new global secondary index on the table. After the index
begins backfilling, you can use
\code{\link[=dynamodb_update_table]{update_table}} to perform other operations.
}

\code{\link[=dynamodb_update_table]{update_table}} is an asynchronous operation;
while it is executing, the table status changes from \code{ACTIVE} to
\code{UPDATING}. While it is \code{UPDATING}, you cannot issue another
\code{\link[=dynamodb_update_table]{update_table}} request. When the table returns
to the \code{ACTIVE} state, the \code{\link[=dynamodb_update_table]{update_table}}
operation is complete.
}
\section{Request syntax}{
\preformatted{svc$update_table(
  AttributeDefinitions = list(
    list(
      AttributeName = "string",
      AttributeType = "S"|"N"|"B"
    )
  ),
  TableName = "string",
  BillingMode = "PROVISIONED"|"PAY_PER_REQUEST",
  ProvisionedThroughput = list(
    ReadCapacityUnits = 123,
    WriteCapacityUnits = 123
  ),
  GlobalSecondaryIndexUpdates = list(
    list(
      Update = list(
        IndexName = "string",
        ProvisionedThroughput = list(
          ReadCapacityUnits = 123,
          WriteCapacityUnits = 123
        )
      ),
      Create = list(
        IndexName = "string",
        KeySchema = list(
          list(
            AttributeName = "string",
            KeyType = "HASH"|"RANGE"
          )
        ),
        Projection = list(
          ProjectionType = "ALL"|"KEYS_ONLY"|"INCLUDE",
          NonKeyAttributes = list(
            "string"
          )
        ),
        ProvisionedThroughput = list(
          ReadCapacityUnits = 123,
          WriteCapacityUnits = 123
        )
      ),
      Delete = list(
        IndexName = "string"
      )
    )
  ),
  StreamSpecification = list(
    StreamEnabled = TRUE|FALSE,
    StreamViewType = "NEW_IMAGE"|"OLD_IMAGE"|"NEW_AND_OLD_IMAGES"|"KEYS_ONLY"
  ),
  SSESpecification = list(
    Enabled = TRUE|FALSE,
    SSEType = "AES256"|"KMS",
    KMSMasterKeyId = "string"
  ),
  ReplicaUpdates = list(
    list(
      Create = list(
        RegionName = "string",
        KMSMasterKeyId = "string",
        ProvisionedThroughputOverride = list(
          ReadCapacityUnits = 123
        ),
        GlobalSecondaryIndexes = list(
          list(
            IndexName = "string",
            ProvisionedThroughputOverride = list(
              ReadCapacityUnits = 123
            )
          )
        )
      ),
      Update = list(
        RegionName = "string",
        KMSMasterKeyId = "string",
        ProvisionedThroughputOverride = list(
          ReadCapacityUnits = 123
        ),
        GlobalSecondaryIndexes = list(
          list(
            IndexName = "string",
            ProvisionedThroughputOverride = list(
              ReadCapacityUnits = 123
            )
          )
        )
      ),
      Delete = list(
        RegionName = "string"
      )
    )
  )
)
}
}

\examples{
\dontrun{
# This example increases the provisioned read and write capacity on the
# Music table.
svc$update_table(
  ProvisionedThroughput = list(
    ReadCapacityUnits = 10L,
    WriteCapacityUnits = 10L
  ),
  TableName = "MusicCollection"
)
}

}
\keyword{internal}
