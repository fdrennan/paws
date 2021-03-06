% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_delete_origin_request_policy}
\alias{cloudfront_delete_origin_request_policy}
\title{Deletes an origin request policy}
\usage{
cloudfront_delete_origin_request_policy(Id, IfMatch)
}
\arguments{
\item{Id}{[required] The unique identifier for the origin request policy that you are
deleting. To get the identifier, you can use
\code{\link[=cloudfront_list_origin_request_policies]{list_origin_request_policies}}.}

\item{IfMatch}{The version of the origin request policy that you are deleting. The
version is the origin request policy’s \code{ETag} value, which you can get
using
\code{\link[=cloudfront_list_origin_request_policies]{list_origin_request_policies}},
\code{\link[=cloudfront_get_origin_request_policy]{get_origin_request_policy}}, or
\code{\link[=cloudfront_get_origin_request_policy_config]{get_origin_request_policy_config}}.}
}
\value{
An empty list.
}
\description{
Deletes an origin request policy.

You cannot delete an origin request policy if it’s attached to any cache
behaviors. First update your distributions to remove the origin request
policy from all cache behaviors, then delete the origin request policy.

To delete an origin request policy, you must provide the policy’s
identifier and version. To get the identifier, you can use
\code{\link[=cloudfront_list_origin_request_policies]{list_origin_request_policies}}
or \code{\link[=cloudfront_get_origin_request_policy]{get_origin_request_policy}}.
}
\section{Request syntax}{
\preformatted{svc$delete_origin_request_policy(
  Id = "string",
  IfMatch = "string"
)
}
}

\keyword{internal}
