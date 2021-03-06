% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesis_operations.R
\name{kinesis_put_records}
\alias{kinesis_put_records}
\title{Writes multiple data records into a Kinesis data stream in a single call
(also referred to as a PutRecords request)}
\usage{
kinesis_put_records(Records, StreamName)
}
\arguments{
\item{Records}{[required] The records associated with the request.}

\item{StreamName}{[required] The stream name associated with the request.}
}
\value{
A list with the following syntax:\preformatted{list(
  FailedRecordCount = 123,
  Records = list(
    list(
      SequenceNumber = "string",
      ShardId = "string",
      ErrorCode = "string",
      ErrorMessage = "string"
    )
  ),
  EncryptionType = "NONE"|"KMS"
)
}
}
\description{
Writes multiple data records into a Kinesis data stream in a single call
(also referred to as a \code{\link[=kinesis_put_records]{put_records}} request).
Use this operation to send data into the stream for data ingestion and
processing.

Each \code{\link[=kinesis_put_records]{put_records}} request can support up to 500
records. Each record in the request can be as large as 1 MiB, up to a
limit of 5 MiB for the entire request, including partition keys. Each
shard can support writes up to 1,000 records per second, up to a maximum
data write total of 1 MiB per second.

You must specify the name of the stream that captures, stores, and
transports the data; and an array of request \code{Records}, with each record
in the array requiring a partition key and data blob. The record size
limit applies to the total size of the partition key and data blob.

The data blob can be any type of data; for example, a segment from a log
file, geographic/location data, website clickstream data, and so on.

The partition key is used by Kinesis Data Streams as input to a hash
function that maps the partition key and associated data to a specific
shard. An MD5 hash function is used to map partition keys to 128-bit
integer values and to map associated data records to shards. As a result
of this hashing mechanism, all data records with the same partition key
map to the same shard within the stream. For more information, see
\href{https://docs.aws.amazon.com/streams/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream}{Adding Data to a Stream}
in the \emph{Amazon Kinesis Data Streams Developer Guide}.

Each record in the \code{Records} array may include an optional parameter,
\code{ExplicitHashKey}, which overrides the partition key to shard mapping.
This parameter allows a data producer to determine explicitly the shard
where the record is stored. For more information, see \href{https://docs.aws.amazon.com/streams/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords}{Adding Multiple Records with PutRecords}
in the \emph{Amazon Kinesis Data Streams Developer Guide}.

The \code{\link[=kinesis_put_records]{put_records}} response includes an array of
response \code{Records}. Each record in the response array directly
correlates with a record in the request array using natural ordering,
from the top to the bottom of the request and response. The response
\code{Records} array always includes the same number of records as the
request array.

The response \code{Records} array includes both successfully and
unsuccessfully processed records. Kinesis Data Streams attempts to
process all records in each \code{\link[=kinesis_put_records]{put_records}}
request. A single record failure does not stop the processing of
subsequent records. As a result, PutRecords doesn't guarantee the
ordering of records. If you need to read records in the same order they
are written to the stream, use \code{\link[=kinesis_put_record]{put_record}}
instead of \code{\link[=kinesis_put_records]{put_records}}, and write to the same
shard.

A successfully processed record includes \code{ShardId} and \code{SequenceNumber}
values. The \code{ShardId} parameter identifies the shard in the stream where
the record is stored. The \code{SequenceNumber} parameter is an identifier
assigned to the put record, unique to all records in the stream.

An unsuccessfully processed record includes \code{ErrorCode} and
\code{ErrorMessage} values. \code{ErrorCode} reflects the type of error and can be
one of the following values: \code{ProvisionedThroughputExceededException} or
\code{InternalFailure}. \code{ErrorMessage} provides more detailed information
about the \code{ProvisionedThroughputExceededException} exception including
the account ID, stream name, and shard ID of the record that was
throttled. For more information about partially successful responses,
see \href{https://docs.aws.amazon.com/streams/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords}{Adding Multiple Records with PutRecords}
in the \emph{Amazon Kinesis Data Streams Developer Guide}.

After you write a record to a stream, you cannot modify that record or
its order within the stream.

By default, data records are accessible for 24 hours from the time that
they are added to a stream. You can use
\code{\link[=kinesis_increase_stream_retention_period]{increase_stream_retention_period}}
or
\code{\link[=kinesis_decrease_stream_retention_period]{decrease_stream_retention_period}}
to modify this retention period.
}
\section{Request syntax}{
\preformatted{svc$put_records(
  Records = list(
    list(
      Data = raw,
      ExplicitHashKey = "string",
      PartitionKey = "string"
    )
  ),
  StreamName = "string"
)
}
}

\keyword{internal}
