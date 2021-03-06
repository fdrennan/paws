% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robomaker_operations.R
\name{robomaker_describe_robot_application}
\alias{robomaker_describe_robot_application}
\title{Describes a robot application}
\usage{
robomaker_describe_robot_application(application, applicationVersion)
}
\arguments{
\item{application}{[required] The Amazon Resource Name (ARN) of the robot application.}

\item{applicationVersion}{The version of the robot application to describe.}
}
\value{
A list with the following syntax:\preformatted{list(
  arn = "string",
  name = "string",
  version = "string",
  sources = list(
    list(
      s3Bucket = "string",
      s3Key = "string",
      etag = "string",
      architecture = "X86_64"|"ARM64"|"ARMHF"
    )
  ),
  robotSoftwareSuite = list(
    name = "ROS"|"ROS2",
    version = "Kinetic"|"Melodic"|"Dashing"
  ),
  revisionId = "string",
  lastUpdatedAt = as.POSIXct(
    "2015-01-01"
  ),
  tags = list(
    "string"
  )
)
}
}
\description{
Describes a robot application.
}
\section{Request syntax}{
\preformatted{svc$describe_robot_application(
  application = "string",
  applicationVersion = "string"
)
}
}

\keyword{internal}
