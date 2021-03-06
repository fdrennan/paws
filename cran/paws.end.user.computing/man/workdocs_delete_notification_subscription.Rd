% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workdocs_operations.R
\name{workdocs_delete_notification_subscription}
\alias{workdocs_delete_notification_subscription}
\title{Deletes the specified subscription from the specified organization}
\usage{
workdocs_delete_notification_subscription(SubscriptionId,
  OrganizationId)
}
\arguments{
\item{SubscriptionId}{[required] The ID of the subscription.}

\item{OrganizationId}{[required] The ID of the organization.}
}
\value{
An empty list.
}
\description{
Deletes the specified subscription from the specified organization.
}
\section{Request syntax}{
\preformatted{svc$delete_notification_subscription(
  SubscriptionId = "string",
  OrganizationId = "string"
)
}
}

\keyword{internal}
