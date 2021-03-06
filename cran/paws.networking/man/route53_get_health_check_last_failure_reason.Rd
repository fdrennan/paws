% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53_operations.R
\name{route53_get_health_check_last_failure_reason}
\alias{route53_get_health_check_last_failure_reason}
\title{Gets the reason that a specified health check failed most recently}
\usage{
route53_get_health_check_last_failure_reason(HealthCheckId)
}
\arguments{
\item{HealthCheckId}{[required] The ID for the health check for which you want the last failure reason.
When you created the health check,
\code{\link[=route53_create_health_check]{create_health_check}} returned the ID in
the response, in the \code{HealthCheckId} element.

If you want to get the last failure reason for a calculated health
check, you must use the Amazon Route 53 console or the CloudWatch
console. You can't use
\code{\link[=route53_get_health_check_last_failure_reason]{get_health_check_last_failure_reason}}
for a calculated health check.}
}
\value{
A list with the following syntax:\preformatted{list(
  HealthCheckObservations = list(
    list(
      Region = "us-east-1"|"us-west-1"|"us-west-2"|"eu-west-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"sa-east-1",
      IPAddress = "string",
      StatusReport = list(
        Status = "string",
        CheckedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )
  )
)
}
}
\description{
Gets the reason that a specified health check failed most recently.
}
\section{Request syntax}{
\preformatted{svc$get_health_check_last_failure_reason(
  HealthCheckId = "string"
)
}
}

\keyword{internal}
