% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_update_fleet_attributes}
\alias{gamelift_update_fleet_attributes}
\title{Updates fleet properties, including name and description, for a fleet}
\usage{
gamelift_update_fleet_attributes(FleetId, Name, Description,
  NewGameSessionProtectionPolicy, ResourceCreationLimitPolicy,
  MetricGroups)
}
\arguments{
\item{FleetId}{[required] A unique identifier for a fleet to update attribute metadata for. You
can use either the fleet ID or ARN value.}

\item{Name}{A descriptive label that is associated with a fleet. Fleet names do not
need to be unique.}

\item{Description}{Human-readable description of a fleet.}

\item{NewGameSessionProtectionPolicy}{Game session protection policy to apply to all new instances created in
this fleet. Instances that already exist are not affected. You can set
protection for individual instances using
\code{\link[=gamelift_update_game_session]{update_game_session}}.
\itemize{
\item \strong{NoProtection} -- The game session can be terminated during a
scale-down event.
\item \strong{FullProtection} -- If the game session is in an \code{ACTIVE} status,
it cannot be terminated during a scale-down event.
}}

\item{ResourceCreationLimitPolicy}{Policy that limits the number of game sessions an individual player can
create over a span of time.}

\item{MetricGroups}{Names of metric groups to include this fleet in. Amazon CloudWatch uses
a fleet metric group is to aggregate metrics from multiple fleets. Use
an existing metric group name to add this fleet to the group. Or use a
new name to create a new metric group. A fleet can only be included in
one metric group at a time.}
}
\value{
A list with the following syntax:\preformatted{list(
  FleetId = "string"
)
}
}
\description{
Updates fleet properties, including name and description, for a fleet.
To update metadata, specify the fleet ID and the property values that
you want to change. If successful, the fleet ID for the updated fleet is
returned.

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html}{Setting up GameLift Fleets}

\strong{Related operations}
\itemize{
\item \code{\link[=gamelift_create_fleet]{create_fleet}}
\item \code{\link[=gamelift_list_fleets]{list_fleets}}
\item \code{\link[=gamelift_delete_fleet]{delete_fleet}}
\item \code{\link[=gamelift_describe_fleet_attributes]{describe_fleet_attributes}}
\item Update fleets:
\itemize{
\item \code{\link[=gamelift_update_fleet_attributes]{update_fleet_attributes}}
\item \code{\link[=gamelift_update_fleet_capacity]{update_fleet_capacity}}
\item \code{\link[=gamelift_update_fleet_port_settings]{update_fleet_port_settings}}
\item \code{\link[=gamelift_update_runtime_configuration]{update_runtime_configuration}}
}
\item \code{\link[=gamelift_start_fleet_actions]{start_fleet_actions}} or
\code{\link[=gamelift_stop_fleet_actions]{stop_fleet_actions}}
}
}
\section{Request syntax}{
\preformatted{svc$update_fleet_attributes(
  FleetId = "string",
  Name = "string",
  Description = "string",
  NewGameSessionProtectionPolicy = "NoProtection"|"FullProtection",
  ResourceCreationLimitPolicy = list(
    NewGameSessionsPerCreator = 123,
    PolicyPeriodInMinutes = 123
  ),
  MetricGroups = list(
    "string"
  )
)
}
}

\keyword{internal}
