% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appstream_operations.R
\name{appstream_delete_fleet}
\alias{appstream_delete_fleet}
\title{Deletes the specified fleet}
\usage{
appstream_delete_fleet(Name)
}
\arguments{
\item{Name}{[required] The name of the fleet.}
}
\value{
An empty list.
}
\description{
Deletes the specified fleet.
}
\section{Request syntax}{
\preformatted{svc$delete_fleet(
  Name = "string"
)
}
}

\keyword{internal}
