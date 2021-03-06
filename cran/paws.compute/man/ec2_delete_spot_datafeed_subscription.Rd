% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_delete_spot_datafeed_subscription}
\alias{ec2_delete_spot_datafeed_subscription}
\title{Deletes the data feed for Spot Instances}
\usage{
ec2_delete_spot_datafeed_subscription(DryRun)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\value{
An empty list.
}
\description{
Deletes the data feed for Spot Instances.
}
\section{Request syntax}{
\preformatted{svc$delete_spot_datafeed_subscription(
  DryRun = TRUE|FALSE
)
}
}

\examples{
\dontrun{
# This example deletes a Spot data feed subscription for the account.
svc$delete_spot_datafeed_subscription()
}

}
\keyword{internal}
