% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/personalize_operations.R
\name{personalize_describe_event_tracker}
\alias{personalize_describe_event_tracker}
\title{Describes an event tracker}
\usage{
personalize_describe_event_tracker(eventTrackerArn)
}
\arguments{
\item{eventTrackerArn}{[required] The Amazon Resource Name (ARN) of the event tracker to describe.}
}
\value{
A list with the following syntax:\preformatted{list(
  eventTracker = list(
    name = "string",
    eventTrackerArn = "string",
    accountId = "string",
    trackingId = "string",
    datasetGroupArn = "string",
    status = "string",
    creationDateTime = as.POSIXct(
      "2015-01-01"
    ),
    lastUpdatedDateTime = as.POSIXct(
      "2015-01-01"
    )
  )
)
}
}
\description{
Describes an event tracker. The response includes the \code{trackingId} and
\code{status} of the event tracker. For more information on event trackers,
see \code{\link[=personalize_create_event_tracker]{create_event_tracker}}.
}
\section{Request syntax}{
\preformatted{svc$describe_event_tracker(
  eventTrackerArn = "string"
)
}
}

\keyword{internal}
