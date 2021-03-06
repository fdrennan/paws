% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53_operations.R
\name{route53_get_query_logging_config}
\alias{route53_get_query_logging_config}
\title{Gets information about a specified configuration for DNS query logging}
\usage{
route53_get_query_logging_config(Id)
}
\arguments{
\item{Id}{[required] The ID of the configuration for DNS query logging that you want to get
information about.}
}
\value{
A list with the following syntax:\preformatted{list(
  QueryLoggingConfig = list(
    Id = "string",
    HostedZoneId = "string",
    CloudWatchLogsLogGroupArn = "string"
  )
)
}
}
\description{
Gets information about a specified configuration for DNS query logging.

For more information about DNS query logs, see
\code{\link[=route53_create_query_logging_config]{create_query_logging_config}} and
\href{https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html}{Logging DNS Queries}.
}
\section{Request syntax}{
\preformatted{svc$get_query_logging_config(
  Id = "string"
)
}
}

\keyword{internal}
