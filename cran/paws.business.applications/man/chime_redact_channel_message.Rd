% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_redact_channel_message}
\alias{chime_redact_channel_message}
\title{Redacts message content, but not metadata}
\usage{
chime_redact_channel_message(ChannelArn, MessageId)
}
\arguments{
\item{ChannelArn}{[required] The ARN of the channel containing the messages that you want to redact.}

\item{MessageId}{[required] The ID of the message being redacted.}
}
\value{
A list with the following syntax:\preformatted{list(
  ChannelArn = "string",
  MessageId = "string"
)
}
}
\description{
Redacts message content, but not metadata. The message exists in the
back end, but the action returns null content, and the state shows as
redacted.
}
\section{Request syntax}{
\preformatted{svc$redact_channel_message(
  ChannelArn = "string",
  MessageId = "string"
)
}
}

\keyword{internal}
