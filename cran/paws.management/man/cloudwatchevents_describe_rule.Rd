% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchevents_operations.R
\name{cloudwatchevents_describe_rule}
\alias{cloudwatchevents_describe_rule}
\title{Describes the specified rule}
\usage{
cloudwatchevents_describe_rule(Name, EventBusName)
}
\arguments{
\item{Name}{[required] The name of the rule.}

\item{EventBusName}{The name or ARN of the event bus associated with the rule. If you omit
this, the default event bus is used.}
}
\value{
A list with the following syntax:\preformatted{list(
  Name = "string",
  Arn = "string",
  EventPattern = "string",
  ScheduleExpression = "string",
  State = "ENABLED"|"DISABLED",
  Description = "string",
  RoleArn = "string",
  ManagedBy = "string",
  EventBusName = "string",
  CreatedBy = "string"
)
}
}
\description{
Describes the specified rule.

DescribeRule does not list the targets of a rule. To see the targets
associated with a rule, use
\code{\link[=cloudwatchevents_list_targets_by_rule]{list_targets_by_rule}}.
}
\section{Request syntax}{
\preformatted{svc$describe_rule(
  Name = "string",
  EventBusName = "string"
)
}
}

\keyword{internal}
