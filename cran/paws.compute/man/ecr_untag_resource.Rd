% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecr_operations.R
\name{ecr_untag_resource}
\alias{ecr_untag_resource}
\title{Deletes specified tags from a resource}
\usage{
ecr_untag_resource(resourceArn, tagKeys)
}
\arguments{
\item{resourceArn}{[required] The Amazon Resource Name (ARN) of the resource from which to remove
tags. Currently, the only supported resource is an Amazon ECR
repository.}

\item{tagKeys}{[required] The keys of the tags to be removed.}
}
\value{
An empty list.
}
\description{
Deletes specified tags from a resource.
}
\section{Request syntax}{
\preformatted{svc$untag_resource(
  resourceArn = "string",
  tagKeys = list(
    "string"
  )
)
}
}

\keyword{internal}
