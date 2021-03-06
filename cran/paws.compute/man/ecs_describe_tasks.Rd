% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecs_operations.R
\name{ecs_describe_tasks}
\alias{ecs_describe_tasks}
\title{Describes a specified task or tasks}
\usage{
ecs_describe_tasks(cluster, tasks, include)
}
\arguments{
\item{cluster}{The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the task or tasks to describe. If you do not specify a cluster,
the default cluster is assumed. This parameter is required if the task
or tasks you are describing were launched in any cluster other than the
default cluster.}

\item{tasks}{[required] A list of up to 100 task IDs or full ARN entries.}

\item{include}{Specifies whether you want to see the resource tags for the task. If
\code{TAGS} is specified, the tags are included in the response. If this
field is omitted, tags are not included in the response.}
}
\value{
A list with the following syntax:\preformatted{list(
  tasks = list(
    list(
      attachments = list(
        list(
          id = "string",
          type = "string",
          status = "string",
          details = list(
            list(
              name = "string",
              value = "string"
            )
          )
        )
      ),
      attributes = list(
        list(
          name = "string",
          value = "string",
          targetType = "container-instance",
          targetId = "string"
        )
      ),
      availabilityZone = "string",
      capacityProviderName = "string",
      clusterArn = "string",
      connectivity = "CONNECTED"|"DISCONNECTED",
      connectivityAt = as.POSIXct(
        "2015-01-01"
      ),
      containerInstanceArn = "string",
      containers = list(
        list(
          containerArn = "string",
          taskArn = "string",
          name = "string",
          image = "string",
          imageDigest = "string",
          runtimeId = "string",
          lastStatus = "string",
          exitCode = 123,
          reason = "string",
          networkBindings = list(
            list(
              bindIP = "string",
              containerPort = 123,
              hostPort = 123,
              protocol = "tcp"|"udp"
            )
          ),
          networkInterfaces = list(
            list(
              attachmentId = "string",
              privateIpv4Address = "string",
              ipv6Address = "string"
            )
          ),
          healthStatus = "HEALTHY"|"UNHEALTHY"|"UNKNOWN",
          cpu = "string",
          memory = "string",
          memoryReservation = "string",
          gpuIds = list(
            "string"
          )
        )
      ),
      cpu = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      desiredStatus = "string",
      executionStoppedAt = as.POSIXct(
        "2015-01-01"
      ),
      group = "string",
      healthStatus = "HEALTHY"|"UNHEALTHY"|"UNKNOWN",
      inferenceAccelerators = list(
        list(
          deviceName = "string",
          deviceType = "string"
        )
      ),
      lastStatus = "string",
      launchType = "EC2"|"FARGATE",
      memory = "string",
      overrides = list(
        containerOverrides = list(
          list(
            name = "string",
            command = list(
              "string"
            ),
            environment = list(
              list(
                name = "string",
                value = "string"
              )
            ),
            environmentFiles = list(
              list(
                value = "string",
                type = "s3"
              )
            ),
            cpu = 123,
            memory = 123,
            memoryReservation = 123,
            resourceRequirements = list(
              list(
                value = "string",
                type = "GPU"|"InferenceAccelerator"
              )
            )
          )
        ),
        cpu = "string",
        inferenceAcceleratorOverrides = list(
          list(
            deviceName = "string",
            deviceType = "string"
          )
        ),
        executionRoleArn = "string",
        memory = "string",
        taskRoleArn = "string"
      ),
      platformVersion = "string",
      pullStartedAt = as.POSIXct(
        "2015-01-01"
      ),
      pullStoppedAt = as.POSIXct(
        "2015-01-01"
      ),
      startedAt = as.POSIXct(
        "2015-01-01"
      ),
      startedBy = "string",
      stopCode = "TaskFailedToStart"|"EssentialContainerExited"|"UserInitiated",
      stoppedAt = as.POSIXct(
        "2015-01-01"
      ),
      stoppedReason = "string",
      stoppingAt = as.POSIXct(
        "2015-01-01"
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      taskArn = "string",
      taskDefinitionArn = "string",
      version = 123
    )
  ),
  failures = list(
    list(
      arn = "string",
      reason = "string",
      detail = "string"
    )
  )
)
}
}
\description{
Describes a specified task or tasks.
}
\section{Request syntax}{
\preformatted{svc$describe_tasks(
  cluster = "string",
  tasks = list(
    "string"
  ),
  include = list(
    "TAGS"
  )
)
}
}

\examples{
\dontrun{
# This example provides a description of the specified task, using the
# task UUID as an identifier.
svc$describe_tasks(
  tasks = list(
    "c5cba4eb-5dad-405e-96db-71ef8eefe6a8"
  )
)
}

}
\keyword{internal}
