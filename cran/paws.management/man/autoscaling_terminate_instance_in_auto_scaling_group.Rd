% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscaling_operations.R
\name{autoscaling_terminate_instance_in_auto_scaling_group}
\alias{autoscaling_terminate_instance_in_auto_scaling_group}
\title{Terminates the specified instance and optionally adjusts the desired
group size}
\usage{
autoscaling_terminate_instance_in_auto_scaling_group(InstanceId,
  ShouldDecrementDesiredCapacity)
}
\arguments{
\item{InstanceId}{[required] The ID of the instance.}

\item{ShouldDecrementDesiredCapacity}{[required] Indicates whether terminating the instance also decrements the size of
the Auto Scaling group.}
}
\description{
Terminates the specified instance and optionally adjusts the desired
group size.
}
\details{
This call simply makes a termination request. The instance is not
terminated immediately.
}
\section{Request syntax}{
\preformatted{svc$terminate_instance_in_auto_scaling_group(
  InstanceId = "string",
  ShouldDecrementDesiredCapacity = TRUE|FALSE
)
}
}

\examples{
# This example terminates the specified instance from the specified Auto
# Scaling group without updating the size of the group. Auto Scaling
# launches a replacement instance after the specified instance terminates.
\donttest{svc$terminate_instance_in_auto_scaling_group(
  InstanceId = "i-93633f9b",
  ShouldDecrementDesiredCapacity = FALSE
)}

}
\keyword{internal}