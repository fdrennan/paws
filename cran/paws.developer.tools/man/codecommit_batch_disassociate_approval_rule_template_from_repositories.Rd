% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codecommit_operations.R
\name{codecommit_batch_disassociate_approval_rule_template_from_repositories}
\alias{codecommit_batch_disassociate_approval_rule_template_from_repositories}
\title{Removes the association between an approval rule template and one or
more specified repositories}
\usage{
codecommit_batch_disassociate_approval_rule_template_from_repositories(
  approvalRuleTemplateName, repositoryNames)
}
\arguments{
\item{approvalRuleTemplateName}{[required] The name of the template that you want to disassociate from one or more
repositories.}

\item{repositoryNames}{[required] The repository names that you want to disassociate from the approval
rule template.

The length constraint limit is for each string in the array. The array
itself can be empty.}
}
\value{
A list with the following syntax:\preformatted{list(
  disassociatedRepositoryNames = list(
    "string"
  ),
  errors = list(
    list(
      repositoryName = "string",
      errorCode = "string",
      errorMessage = "string"
    )
  )
)
}
}
\description{
Removes the association between an approval rule template and one or
more specified repositories.
}
\section{Request syntax}{
\preformatted{svc$batch_disassociate_approval_rule_template_from_repositories(
  approvalRuleTemplateName = "string",
  repositoryNames = list(
    "string"
  )
)
}
}

\keyword{internal}
