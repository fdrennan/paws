% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appmesh_operations.R
\name{appmesh_describe_route}
\alias{appmesh_describe_route}
\title{Describes an existing route}
\usage{
appmesh_describe_route(meshName, routeName, virtualRouterName)
}
\arguments{
\item{meshName}{[required] The name of the service mesh that the route resides in.}

\item{routeName}{[required] The name of the route to describe.}

\item{virtualRouterName}{[required] The name of the virtual router that the route is associated with.}
}
\description{
Describes an existing route.
}
\section{Request syntax}{
\preformatted{svc$describe_route(
  meshName = "string",
  routeName = "string",
  virtualRouterName = "string"
)
}
}

\keyword{internal}