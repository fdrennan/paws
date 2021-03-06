% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_matchmaking}
\alias{gamelift_describe_matchmaking}
\title{Retrieves one or more matchmaking tickets}
\usage{
gamelift_describe_matchmaking(TicketIds)
}
\arguments{
\item{TicketIds}{[required] A unique identifier for a matchmaking ticket. You can include up to 10
ID values.}
}
\value{
A list with the following syntax:\preformatted{list(
  TicketList = list(
    list(
      TicketId = "string",
      ConfigurationName = "string",
      ConfigurationArn = "string",
      Status = "CANCELLED"|"COMPLETED"|"FAILED"|"PLACING"|"QUEUED"|"REQUIRES_ACCEPTANCE"|"SEARCHING"|"TIMED_OUT",
      StatusReason = "string",
      StatusMessage = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Players = list(
        list(
          PlayerId = "string",
          PlayerAttributes = list(
            list(
              S = "string",
              N = 123.0,
              SL = list(
                "string"
              ),
              SDM = list(
                123.0
              )
            )
          ),
          Team = "string",
          LatencyInMs = list(
            123
          )
        )
      ),
      GameSessionConnectionInfo = list(
        GameSessionArn = "string",
        IpAddress = "string",
        DnsName = "string",
        Port = 123,
        MatchedPlayerSessions = list(
          list(
            PlayerId = "string",
            PlayerSessionId = "string"
          )
        )
      ),
      EstimatedWaitTime = 123
    )
  )
)
}
}
\description{
Retrieves one or more matchmaking tickets. Use this operation to
retrieve ticket information, including--after a successful match is
made--connection information for the resulting new game session.

To request matchmaking tickets, provide a list of up to 10 ticket IDs.
If the request is successful, a ticket object is returned for each
requested ID that currently exists.

This operation is not designed to be continually called to track
matchmaking ticket status. This practice can cause you to exceed your
API limit, which results in errors. Instead, as a best practice, set up
an Amazon Simple Notification Service (SNS) to receive notifications,
and provide the topic ARN in the matchmaking configuration. Continuously
poling ticket status with
\code{\link[=gamelift_describe_matchmaking]{describe_matchmaking}} should only be
used for games in development with low matchmaking usage.

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html}{Add FlexMatch to a Game Client}

\href{https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html}{Set Up FlexMatch Event Notification}

\strong{Related operations}
\itemize{
\item \code{\link[=gamelift_start_matchmaking]{start_matchmaking}}
\item \code{\link[=gamelift_describe_matchmaking]{describe_matchmaking}}
\item \code{\link[=gamelift_stop_matchmaking]{stop_matchmaking}}
\item \code{\link[=gamelift_accept_match]{accept_match}}
\item \code{\link[=gamelift_start_match_backfill]{start_match_backfill}}
}
}
\section{Request syntax}{
\preformatted{svc$describe_matchmaking(
  TicketIds = list(
    "string"
  )
)
}
}

\keyword{internal}
