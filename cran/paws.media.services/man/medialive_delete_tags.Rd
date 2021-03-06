% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medialive_operations.R
\name{medialive_delete_tags}
\alias{medialive_delete_tags}
\title{Removes tags for a resource}
\usage{
medialive_delete_tags(ResourceArn, TagKeys)
}
\arguments{
\item{ResourceArn}{[required]}

\item{TagKeys}{[required] An array of tag keys to delete}
}
\value{
An empty list.
}
\description{
Removes tags for a resource
}
\section{Request syntax}{
\preformatted{svc$delete_tags(
  ResourceArn = "string",
  TagKeys = list(
    "string"
  )
)
}
}

\keyword{internal}
