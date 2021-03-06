% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesisvideo_operations.R
\name{kinesisvideo_update_data_retention}
\alias{kinesisvideo_update_data_retention}
\title{Increases or decreases the stream's data retention period by the value
that you specify}
\usage{
kinesisvideo_update_data_retention(StreamName, StreamARN,
  CurrentVersion, Operation, DataRetentionChangeInHours)
}
\arguments{
\item{StreamName}{The name of the stream whose retention period you want to change.}

\item{StreamARN}{The Amazon Resource Name (ARN) of the stream whose retention period you
want to change.}

\item{CurrentVersion}{[required] The version of the stream whose retention period you want to change. To
get the version, call either the
\code{\link[=kinesisvideo_describe_stream]{describe_stream}} or the
\code{\link[=kinesisvideo_list_streams]{list_streams}} API.}

\item{Operation}{[required] Indicates whether you want to increase or decrease the retention period.}

\item{DataRetentionChangeInHours}{[required] The retention period, in hours. The value you specify replaces the
current value. The maximum value for this parameter is 87600 (ten
years).}
}
\value{
An empty list.
}
\description{
Increases or decreases the stream's data retention period by the value
that you specify. To indicate whether you want to increase or decrease
the data retention period, specify the \code{Operation} parameter in the
request body. In the request, you must specify either the \code{StreamName}
or the \code{StreamARN}.

The retention period that you specify replaces the current value.

This operation requires permission for the
\code{KinesisVideo:UpdateDataRetention} action.

Changing the data retention period affects the data in the stream as
follows:
\itemize{
\item If the data retention period is increased, existing data is retained
for the new retention period. For example, if the data retention
period is increased from one hour to seven hours, all existing data
is retained for seven hours.
\item If the data retention period is decreased, existing data is retained
for the new retention period. For example, if the data retention
period is decreased from seven hours to one hour, all existing data
is retained for one hour, and any data older than one hour is
deleted immediately.
}
}
\section{Request syntax}{
\preformatted{svc$update_data_retention(
  StreamName = "string",
  StreamARN = "string",
  CurrentVersion = "string",
  Operation = "INCREASE_DATA_RETENTION"|"DECREASE_DATA_RETENTION",
  DataRetentionChangeInHours = 123
)
}
}

\keyword{internal}
