% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecs_operations.R
\name{ecs_update_container_agent}
\alias{ecs_update_container_agent}
\title{Updates the Amazon ECS container agent on a specified container instance}
\usage{
ecs_update_container_agent(cluster, containerInstance)
}
\arguments{
\item{cluster}{The short name or full Amazon Resource Name (ARN) of the cluster that
your container instance is running on. If you do not specify a cluster,
the default cluster is assumed.}

\item{containerInstance}{[required] The container instance ID or full ARN entries for the container instance
on which you would like to update the Amazon ECS container agent.}
}
\value{
A list with the following syntax:\preformatted{list(
  containerInstance = list(
    containerInstanceArn = "string",
    ec2InstanceId = "string",
    capacityProviderName = "string",
    version = 123,
    versionInfo = list(
      agentVersion = "string",
      agentHash = "string",
      dockerVersion = "string"
    ),
    remainingResources = list(
      list(
        name = "string",
        type = "string",
        doubleValue = 123.0,
        longValue = 123,
        integerValue = 123,
        stringSetValue = list(
          "string"
        )
      )
    ),
    registeredResources = list(
      list(
        name = "string",
        type = "string",
        doubleValue = 123.0,
        longValue = 123,
        integerValue = 123,
        stringSetValue = list(
          "string"
        )
      )
    ),
    status = "string",
    statusReason = "string",
    agentConnected = TRUE|FALSE,
    runningTasksCount = 123,
    pendingTasksCount = 123,
    agentUpdateStatus = "PENDING"|"STAGING"|"STAGED"|"UPDATING"|"UPDATED"|"FAILED",
    attributes = list(
      list(
        name = "string",
        value = "string",
        targetType = "container-instance",
        targetId = "string"
      )
    ),
    registeredAt = as.POSIXct(
      "2015-01-01"
    ),
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
    tags = list(
      list(
        key = "string",
        value = "string"
      )
    )
  )
)
}
}
\description{
Updates the Amazon ECS container agent on a specified container
instance. Updating the Amazon ECS container agent does not interrupt
running tasks or services on the container instance. The process for
updating the agent differs depending on whether your container instance
was launched with the Amazon ECS-optimized AMI or another operating
system.

\code{\link[=ecs_update_container_agent]{update_container_agent}} requires the
Amazon ECS-optimized AMI or Amazon Linux with the \code{ecs-init} service
installed and running. For help updating the Amazon ECS container agent
on other operating systems, see \href{https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent}{Manually Updating the Amazon ECS Container Agent}
in the \emph{Amazon Elastic Container Service Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$update_container_agent(
  cluster = "string",
  containerInstance = "string"
)
}
}

\keyword{internal}
