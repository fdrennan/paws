% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codecommit_operations.R
\name{codecommit_get_commit}
\alias{codecommit_get_commit}
\title{Returns information about a commit, including commit message and
committer information}
\usage{
codecommit_get_commit(repositoryName, commitId)
}
\arguments{
\item{repositoryName}{[required] The name of the repository to which the commit was made.}

\item{commitId}{[required] The commit ID. Commit IDs are the full SHA ID of the commit.}
}
\value{
A list with the following syntax:\preformatted{list(
  commit = list(
    commitId = "string",
    treeId = "string",
    parents = list(
      "string"
    ),
    message = "string",
    author = list(
      name = "string",
      email = "string",
      date = "string"
    ),
    committer = list(
      name = "string",
      email = "string",
      date = "string"
    ),
    additionalData = "string"
  )
)
}
}
\description{
Returns information about a commit, including commit message and
committer information.
}
\section{Request syntax}{
\preformatted{svc$get_commit(
  repositoryName = "string",
  commitId = "string"
)
}
}

\keyword{internal}
