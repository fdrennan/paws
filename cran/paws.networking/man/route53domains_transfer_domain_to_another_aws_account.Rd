% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53domains_operations.R
\name{route53domains_transfer_domain_to_another_aws_account}
\alias{route53domains_transfer_domain_to_another_aws_account}
\title{Transfers a domain from the current AWS account to another AWS account}
\usage{
route53domains_transfer_domain_to_another_aws_account(DomainName,
  AccountId)
}
\arguments{
\item{DomainName}{[required] The name of the domain that you want to transfer from the current AWS
account to another account.}

\item{AccountId}{[required] The account ID of the AWS account that you want to transfer the domain
to, for example, \code{111122223333}.}
}
\value{
A list with the following syntax:\preformatted{list(
  OperationId = "string",
  Password = "string"
)
}
}
\description{
Transfers a domain from the current AWS account to another AWS account.
Note the following:
\itemize{
\item The AWS account that you're transferring the domain to must accept
the transfer. If the other account doesn't accept the transfer
within 3 days, we cancel the transfer. See
\code{\link[=route53domains_accept_domain_transfer_from_another_aws_account]{accept_domain_transfer_from_another_aws_account}}.
\item You can cancel the transfer before the other account accepts it. See
\code{\link[=route53domains_cancel_domain_transfer_to_another_aws_account]{cancel_domain_transfer_to_another_aws_account}}.
\item The other account can reject the transfer. See
\code{\link[=route53domains_reject_domain_transfer_from_another_aws_account]{reject_domain_transfer_from_another_aws_account}}.
}

When you transfer a domain from one AWS account to another, Route 53
doesn't transfer the hosted zone that is associated with the domain. DNS
resolution isn't affected if the domain and the hosted zone are owned by
separate accounts, so transferring the hosted zone is optional. For
information about transferring the hosted zone to another AWS account,
see \href{https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/hosted-zones-migrating.html}{Migrating a Hosted Zone to a Different AWS Account}
in the \emph{Amazon Route 53 Developer Guide}.

Use either \code{\link[=route53domains_list_operations]{list_operations}} or
\code{\link[=route53domains_get_operation_detail]{get_operation_detail}} to
determine whether the operation succeeded.
\code{\link[=route53domains_get_operation_detail]{get_operation_detail}} provides
additional information, for example,
\verb{Domain Transfer from Aws Account 111122223333 has been cancelled}.
}
\section{Request syntax}{
\preformatted{svc$transfer_domain_to_another_aws_account(
  DomainName = "string",
  AccountId = "string"
)
}
}

\keyword{internal}
