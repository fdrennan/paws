% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_script}
\alias{gamelift_describe_script}
\title{Retrieves properties for a Realtime script}
\usage{
gamelift_describe_script(ScriptId)
}
\arguments{
\item{ScriptId}{[required] A unique identifier for a Realtime script to retrieve properties for.
You can use either the script ID or ARN value.}
}
\value{
A list with the following syntax:\preformatted{list(
  Script = list(
    ScriptId = "string",
    ScriptArn = "string",
    Name = "string",
    Version = "string",
    SizeOnDisk = 123,
    CreationTime = as.POSIXct(
      "2015-01-01"
    ),
    StorageLocation = list(
      Bucket = "string",
      Key = "string",
      RoleArn = "string",
      ObjectVersion = "string"
    )
  )
)
}
}
\description{
Retrieves properties for a Realtime script.

To request a script record, specify the script ID. If successful, an
object containing the script properties is returned.

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html}{Amazon GameLift Realtime Servers}

\strong{Related operations}
\itemize{
\item \code{\link[=gamelift_create_script]{create_script}}
\item \code{\link[=gamelift_list_scripts]{list_scripts}}
\item \code{\link[=gamelift_describe_script]{describe_script}}
\item \code{\link[=gamelift_update_script]{update_script}}
\item \code{\link[=gamelift_delete_script]{delete_script}}
}
}
\section{Request syntax}{
\preformatted{svc$describe_script(
  ScriptId = "string"
)
}
}

\keyword{internal}
