% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_update_alias}
\alias{gamelift_update_alias}
\title{Updates properties for an alias}
\usage{
gamelift_update_alias(AliasId, Name, Description, RoutingStrategy)
}
\arguments{
\item{AliasId}{[required] Unique identifier for a fleet alias. Specify the alias you want to
update.}

\item{Name}{Descriptive label that is associated with an alias. Alias names do not
need to be unique.}

\item{Description}{Human-readable description of an alias.}

\item{RoutingStrategy}{Object that specifies the fleet and routing type to use for the alias.}
}
\description{
Updates properties for an alias. To update properties, specify the alias
ID to be updated and provide the information to be changed. To reassign
an alias to another fleet, provide an updated routing strategy. If
successful, the updated alias record is returned.
}
\details{
\itemize{
\item CreateAlias
\item ListAliases
\item DescribeAlias
\item UpdateAlias
\item DeleteAlias
\item ResolveAlias
}
}
\section{Request syntax}{
\preformatted{svc$update_alias(
  AliasId = "string",
  Name = "string",
  Description = "string",
  RoutingStrategy = list(
    Type = "SIMPLE"|"TERMINAL",
    FleetId = "string",
    Message = "string"
  )
)
}
}

\keyword{internal}