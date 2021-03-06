% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/worklink_operations.R
\name{worklink_disassociate_domain}
\alias{worklink_disassociate_domain}
\title{Disassociates a domain from Amazon WorkLink}
\usage{
worklink_disassociate_domain(FleetArn, DomainName)
}
\arguments{
\item{FleetArn}{[required] The ARN of the fleet.}

\item{DomainName}{[required] The name of the domain.}
}
\value{
An empty list.
}
\description{
Disassociates a domain from Amazon WorkLink. End users lose the ability
to access the domain with Amazon WorkLink.
}
\section{Request syntax}{
\preformatted{svc$disassociate_domain(
  FleetArn = "string",
  DomainName = "string"
)
}
}

\keyword{internal}
