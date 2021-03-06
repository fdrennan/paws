% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dax_operations.R
\name{dax_delete_parameter_group}
\alias{dax_delete_parameter_group}
\title{Deletes the specified parameter group}
\usage{
dax_delete_parameter_group(ParameterGroupName)
}
\arguments{
\item{ParameterGroupName}{[required] The name of the parameter group to delete.}
}
\value{
A list with the following syntax:\preformatted{list(
  DeletionMessage = "string"
)
}
}
\description{
Deletes the specified parameter group. You cannot delete a parameter
group if it is associated with any DAX clusters.
}
\section{Request syntax}{
\preformatted{svc$delete_parameter_group(
  ParameterGroupName = "string"
)
}
}

\keyword{internal}
