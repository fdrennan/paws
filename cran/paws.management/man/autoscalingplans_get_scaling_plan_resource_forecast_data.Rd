% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscalingplans_operations.R
\name{autoscalingplans_get_scaling_plan_resource_forecast_data}
\alias{autoscalingplans_get_scaling_plan_resource_forecast_data}
\title{Retrieves the forecast data for a scalable resource}
\usage{
autoscalingplans_get_scaling_plan_resource_forecast_data(
  ScalingPlanName, ScalingPlanVersion, ServiceNamespace, ResourceId,
  ScalableDimension, ForecastDataType, StartTime, EndTime)
}
\arguments{
\item{ScalingPlanName}{[required] The name of the scaling plan.}

\item{ScalingPlanVersion}{[required] The version number of the scaling plan.}

\item{ServiceNamespace}{[required] The namespace of the AWS service.}

\item{ResourceId}{[required] The ID of the resource. This string consists of the resource type and
unique identifier.
\itemize{
\item Auto Scaling group - The resource type is \code{autoScalingGroup} and the
unique identifier is the name of the Auto Scaling group. Example:
\code{autoScalingGroup/my-asg}.
\item ECS service - The resource type is \code{service} and the unique
identifier is the cluster name and service name. Example:
\code{service/default/sample-webapp}.
\item Spot Fleet request - The resource type is \code{spot-fleet-request} and
the unique identifier is the Spot Fleet request ID. Example:
\code{spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE}.
\item DynamoDB table - The resource type is \code{table} and the unique
identifier is the resource ID. Example: \code{table/my-table}.
\item DynamoDB global secondary index - The resource type is \code{index} and
the unique identifier is the resource ID. Example:
\code{table/my-table/index/my-table-index}.
\item Aurora DB cluster - The resource type is \code{cluster} and the unique
identifier is the cluster name. Example: \code{cluster:my-db-cluster}.
}}

\item{ScalableDimension}{[required] The scalable dimension for the resource.}

\item{ForecastDataType}{[required] The type of forecast data to get.
\itemize{
\item \code{LoadForecast}: The load metric forecast.
\item \code{CapacityForecast}: The capacity forecast.
\item \code{ScheduledActionMinCapacity}: The minimum capacity for each
scheduled scaling action. This data is calculated as the larger of
two values: the capacity forecast or the minimum capacity in the
scaling instruction.
\item \code{ScheduledActionMaxCapacity}: The maximum capacity for each
scheduled scaling action. The calculation used is determined by the
predictive scaling maximum capacity behavior setting in the scaling
instruction.
}}

\item{StartTime}{[required] The inclusive start time of the time range for the forecast data to get.
The date and time can be at most 56 days before the current date and
time.}

\item{EndTime}{[required] The exclusive end time of the time range for the forecast data to get.
The maximum time duration between the start and end time is seven days.

Although this parameter can accept a date and time that is more than two
days in the future, the availability of forecast data has limits. AWS
Auto Scaling only issues forecasts for periods of two days in advance.}
}
\description{
Retrieves the forecast data for a scalable resource.
}
\details{
Capacity forecasts are represented as predicted values, or data points,
that are calculated using historical data points from a specified
CloudWatch load metric. Data points are available for up to 56 days.
}
\section{Request syntax}{
\preformatted{svc$get_scaling_plan_resource_forecast_data(
  ScalingPlanName = "string",
  ScalingPlanVersion = 123,
  ServiceNamespace = "autoscaling"|"ecs"|"ec2"|"rds"|"dynamodb",
  ResourceId = "string",
  ScalableDimension = "autoscaling:autoScalingGroup:DesiredCapacity"|"ecs:service:DesiredCount"|"ec2:spot-fleet-request:TargetCapacity"|"rds:cluster:ReadReplicaCount"|"dynamodb:table:ReadCapacityUnits"|"dynamodb:table:WriteCapacityUnits"|"dynamodb:index:ReadCapacityUnits"|"dynamodb:index:WriteCapacityUnits",
  ForecastDataType = "CapacityForecast"|"LoadForecast"|"ScheduledActionMinCapacity"|"ScheduledActionMaxCapacity",
  StartTime = as.POSIXct(
    "2015-01-01"
  ),
  EndTime = as.POSIXct(
    "2015-01-01"
  )
)
}
}

\keyword{internal}