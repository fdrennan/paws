% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elb_operations.R
\name{elb_set_load_balancer_policies_for_backend_server}
\alias{elb_set_load_balancer_policies_for_backend_server}
\title{Replaces the set of policies associated with the specified port on which
the EC2 instance is listening with a new set of policies}
\usage{
elb_set_load_balancer_policies_for_backend_server(LoadBalancerName,
  InstancePort, PolicyNames)
}
\arguments{
\item{LoadBalancerName}{[required] The name of the load balancer.}

\item{InstancePort}{[required] The port number associated with the EC2 instance.}

\item{PolicyNames}{[required] The names of the policies. If the list is empty, then all current
polices are removed from the EC2 instance.}
}
\value{
An empty list.
}
\description{
Replaces the set of policies associated with the specified port on which
the EC2 instance is listening with a new set of policies. At this time,
only the back-end server authentication policy type can be applied to
the instance ports; this policy type is composed of multiple public key
policies.

Each time you use
\code{\link[=elb_set_load_balancer_policies_for_backend_server]{set_load_balancer_policies_for_backend_server}}
to enable the policies, use the \code{PolicyNames} parameter to list the
policies that you want to enable.

You can use \code{\link[=elb_describe_load_balancers]{describe_load_balancers}} or
\code{\link[=elb_describe_load_balancer_policies]{describe_load_balancer_policies}}
to verify that the policy is associated with the EC2 instance.

For more information about enabling back-end instance authentication,
see \href{https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html#configure_backendauth_clt}{Configure Back-end Instance Authentication}
in the \emph{Classic Load Balancers Guide}. For more information about Proxy
Protocol, see \href{https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-proxy-protocol.html}{Configure Proxy Protocol Support}
in the \emph{Classic Load Balancers Guide}.
}
\section{Request syntax}{
\preformatted{svc$set_load_balancer_policies_for_backend_server(
  LoadBalancerName = "string",
  InstancePort = 123,
  PolicyNames = list(
    "string"
  )
)
}
}

\examples{
\dontrun{
# This example replaces the policies that are currently associated with
# the specified port.
svc$set_load_balancer_policies_for_backend_server(
  InstancePort = 80L,
  LoadBalancerName = "my-load-balancer",
  PolicyNames = list(
    "my-ProxyProtocol-policy"
  )
)
}

}
\keyword{internal}
