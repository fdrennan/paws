% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/databasemigrationservice_operations.R
\name{databasemigrationservice_move_replication_task}
\alias{databasemigrationservice_move_replication_task}
\title{Moves a replication task from its current replication instance to a
different target replication instance using the specified parameters}
\usage{
databasemigrationservice_move_replication_task(ReplicationTaskArn,
  TargetReplicationInstanceArn)
}
\arguments{
\item{ReplicationTaskArn}{[required] The Amazon Resource Name (ARN) of the task that you want to move.}

\item{TargetReplicationInstanceArn}{[required] The ARN of the replication instance where you want to move the task to.}
}
\value{
A list with the following syntax:\preformatted{list(
  ReplicationTask = list(
    ReplicationTaskIdentifier = "string",
    SourceEndpointArn = "string",
    TargetEndpointArn = "string",
    ReplicationInstanceArn = "string",
    MigrationType = "full-load"|"cdc"|"full-load-and-cdc",
    TableMappings = "string",
    ReplicationTaskSettings = "string",
    Status = "string",
    LastFailureMessage = "string",
    StopReason = "string",
    ReplicationTaskCreationDate = as.POSIXct(
      "2015-01-01"
    ),
    ReplicationTaskStartDate = as.POSIXct(
      "2015-01-01"
    ),
    CdcStartPosition = "string",
    CdcStopPosition = "string",
    RecoveryCheckpoint = "string",
    ReplicationTaskArn = "string",
    ReplicationTaskStats = list(
      FullLoadProgressPercent = 123,
      ElapsedTimeMillis = 123,
      TablesLoaded = 123,
      TablesLoading = 123,
      TablesQueued = 123,
      TablesErrored = 123,
      FreshStartDate = as.POSIXct(
        "2015-01-01"
      ),
      StartDate = as.POSIXct(
        "2015-01-01"
      ),
      StopDate = as.POSIXct(
        "2015-01-01"
      ),
      FullLoadStartDate = as.POSIXct(
        "2015-01-01"
      ),
      FullLoadFinishDate = as.POSIXct(
        "2015-01-01"
      )
    ),
    TaskData = "string",
    TargetReplicationInstanceArn = "string"
  )
)
}
}
\description{
Moves a replication task from its current replication instance to a
different target replication instance using the specified parameters.
The target replication instance must be created with the same or later
AWS DMS version as the current replication instance.
}
\section{Request syntax}{
\preformatted{svc$move_replication_task(
  ReplicationTaskArn = "string",
  TargetReplicationInstanceArn = "string"
)
}
}

\keyword{internal}
