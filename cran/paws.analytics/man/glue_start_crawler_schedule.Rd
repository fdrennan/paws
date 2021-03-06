% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_start_crawler_schedule}
\alias{glue_start_crawler_schedule}
\title{Changes the schedule state of the specified crawler to SCHEDULED, unless
the crawler is already running or the schedule state is already
SCHEDULED}
\usage{
glue_start_crawler_schedule(CrawlerName)
}
\arguments{
\item{CrawlerName}{[required] Name of the crawler to schedule.}
}
\value{
An empty list.
}
\description{
Changes the schedule state of the specified crawler to \code{SCHEDULED},
unless the crawler is already running or the schedule state is already
\code{SCHEDULED}.
}
\section{Request syntax}{
\preformatted{svc$start_crawler_schedule(
  CrawlerName = "string"
)
}
}

\keyword{internal}
