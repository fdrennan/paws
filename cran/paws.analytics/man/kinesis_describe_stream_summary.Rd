% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesis_operations.R
\name{kinesis_describe_stream_summary}
\alias{kinesis_describe_stream_summary}
\title{Provides a summarized description of the specified Kinesis data stream
without the shard list}
\usage{
kinesis_describe_stream_summary(StreamName)
}
\arguments{
\item{StreamName}{[required] The name of the stream to describe.}
}
\value{
A list with the following syntax:\preformatted{list(
  StreamDescriptionSummary = list(
    StreamName = "string",
    StreamARN = "string",
    StreamStatus = "CREATING"|"DELETING"|"ACTIVE"|"UPDATING",
    RetentionPeriodHours = 123,
    StreamCreationTimestamp = as.POSIXct(
      "2015-01-01"
    ),
    EnhancedMonitoring = list(
      list(
        ShardLevelMetrics = list(
          "IncomingBytes"|"IncomingRecords"|"OutgoingBytes"|"OutgoingRecords"|"WriteProvisionedThroughputExceeded"|"ReadProvisionedThroughputExceeded"|"IteratorAgeMilliseconds"|"ALL"
        )
      )
    ),
    EncryptionType = "NONE"|"KMS",
    KeyId = "string",
    OpenShardCount = 123,
    ConsumerCount = 123
  )
)
}
}
\description{
Provides a summarized description of the specified Kinesis data stream
without the shard list.

The information returned includes the stream name, Amazon Resource Name
(ARN), status, record retention period, approximate creation time,
monitoring, encryption details, and open shard count.

\code{\link[=kinesis_describe_stream_summary]{describe_stream_summary}} has a limit
of 20 transactions per second per account.
}
\section{Request syntax}{
\preformatted{svc$describe_stream_summary(
  StreamName = "string"
)
}
}

\keyword{internal}
