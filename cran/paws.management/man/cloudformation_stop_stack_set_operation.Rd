% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudformation_operations.R
\name{cloudformation_stop_stack_set_operation}
\alias{cloudformation_stop_stack_set_operation}
\title{Stops an in-progress operation on a stack set and its associated stack
instances}
\usage{
cloudformation_stop_stack_set_operation(StackSetName, OperationId)
}
\arguments{
\item{StackSetName}{[required] The name or unique ID of the stack set that you want to stop the
operation for.}

\item{OperationId}{[required] The ID of the stack operation.}
}
\value{
An empty list.
}
\description{
Stops an in-progress operation on a stack set and its associated stack
instances.
}
\section{Request syntax}{
\preformatted{svc$stop_stack_set_operation(
  StackSetName = "string",
  OperationId = "string"
)
}
}

\keyword{internal}
