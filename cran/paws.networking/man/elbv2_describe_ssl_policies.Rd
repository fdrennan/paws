% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elbv2_operations.R
\name{elbv2_describe_ssl_policies}
\alias{elbv2_describe_ssl_policies}
\title{Describes the specified policies or all policies used for SSL
negotiation}
\usage{
elbv2_describe_ssl_policies(Names, Marker, PageSize)
}
\arguments{
\item{Names}{The names of the policies.}

\item{Marker}{The marker for the next set of results. (You received this marker from a
previous call.)}

\item{PageSize}{The maximum number of results to return with this call.}
}
\value{
A list with the following syntax:\preformatted{list(
  SslPolicies = list(
    list(
      SslProtocols = list(
        "string"
      ),
      Ciphers = list(
        list(
          Name = "string",
          Priority = 123
        )
      ),
      Name = "string"
    )
  ),
  NextMarker = "string"
)
}
}
\description{
Describes the specified policies or all policies used for SSL
negotiation.

For more information, see \href{https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies}{Security policies}
in the \emph{Application Load Balancers Guide} or \href{https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies}{Security policies}
in the \emph{Network Load Balancers Guide}.
}
\section{Request syntax}{
\preformatted{svc$describe_ssl_policies(
  Names = list(
    "string"
  ),
  Marker = "string",
  PageSize = 123
)
}
}

\examples{
\dontrun{
# This example describes the specified policy used for SSL negotiation.
svc$describe_ssl_policies(
  Names = list(
    "ELBSecurityPolicy-2015-05"
  )
)
}

}
\keyword{internal}
