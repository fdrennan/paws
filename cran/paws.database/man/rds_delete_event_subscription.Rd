% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_delete_event_subscription}
\alias{rds_delete_event_subscription}
\title{Deletes an RDS event notification subscription}
\usage{
rds_delete_event_subscription(SubscriptionName)
}
\arguments{
\item{SubscriptionName}{[required] The name of the RDS event notification subscription you want to delete.}
}
\value{
A list with the following syntax:\preformatted{list(
  EventSubscription = list(
    CustomerAwsId = "string",
    CustSubscriptionId = "string",
    SnsTopicArn = "string",
    Status = "string",
    SubscriptionCreationTime = "string",
    SourceType = "string",
    SourceIdsList = list(
      "string"
    ),
    EventCategoriesList = list(
      "string"
    ),
    Enabled = TRUE|FALSE,
    EventSubscriptionArn = "string"
  )
)
}
}
\description{
Deletes an RDS event notification subscription.
}
\section{Request syntax}{
\preformatted{svc$delete_event_subscription(
  SubscriptionName = "string"
)
}
}

\keyword{internal}
