% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworks_operations.R
\name{opsworks_describe_load_based_auto_scaling}
\alias{opsworks_describe_load_based_auto_scaling}
\title{Describes load-based auto scaling configurations for specified layers}
\usage{
opsworks_describe_load_based_auto_scaling(LayerIds)
}
\arguments{
\item{LayerIds}{[required] An array of layer IDs.}
}
\value{
A list with the following syntax:\preformatted{list(
  LoadBasedAutoScalingConfigurations = list(
    list(
      LayerId = "string",
      Enable = TRUE|FALSE,
      UpScaling = list(
        InstanceCount = 123,
        ThresholdsWaitTime = 123,
        IgnoreMetricsTime = 123,
        CpuThreshold = 123.0,
        MemoryThreshold = 123.0,
        LoadThreshold = 123.0,
        Alarms = list(
          "string"
        )
      ),
      DownScaling = list(
        InstanceCount = 123,
        ThresholdsWaitTime = 123,
        IgnoreMetricsTime = 123,
        CpuThreshold = 123.0,
        MemoryThreshold = 123.0,
        LoadThreshold = 123.0,
        Alarms = list(
          "string"
        )
      )
    )
  )
)
}
}
\description{
Describes load-based auto scaling configurations for specified layers.

You must specify at least one of the parameters.

\strong{Required Permissions}: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.
}
\section{Request syntax}{
\preformatted{svc$describe_load_based_auto_scaling(
  LayerIds = list(
    "string"
  )
)
}
}

\keyword{internal}
