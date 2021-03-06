% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_associate_routing_profile_queues}
\alias{connect_associate_routing_profile_queues}
\title{Associates a set of queues with a routing profile}
\usage{
connect_associate_routing_profile_queues(InstanceId, RoutingProfileId,
  QueueConfigs)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance.}

\item{RoutingProfileId}{[required] The identifier of the routing profile.}

\item{QueueConfigs}{[required] The queues to associate with this routing profile.}
}
\value{
An empty list.
}
\description{
Associates a set of queues with a routing profile.
}
\section{Request syntax}{
\preformatted{svc$associate_routing_profile_queues(
  InstanceId = "string",
  RoutingProfileId = "string",
  QueueConfigs = list(
    list(
      QueueReference = list(
        QueueId = "string",
        Channel = "VOICE"|"CHAT"|"TASK"
      ),
      Priority = 123,
      Delay = 123
    )
  )
)
}
}

\keyword{internal}
