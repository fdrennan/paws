% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_delete_context}
\alias{sagemaker_delete_context}
\title{Deletes an context}
\usage{
sagemaker_delete_context(ContextName)
}
\arguments{
\item{ContextName}{[required] The name of the context to delete.}
}
\value{
A list with the following syntax:\preformatted{list(
  ContextArn = "string"
)
}
}
\description{
Deletes an context.
}
\section{Request syntax}{
\preformatted{svc$delete_context(
  ContextName = "string"
)
}
}

\keyword{internal}
