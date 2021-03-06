% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mturk_operations.R
\name{mturk_delete_hit}
\alias{mturk_delete_hit}
\title{The DeleteHIT operation is used to delete HIT that is no longer needed}
\usage{
mturk_delete_hit(HITId)
}
\arguments{
\item{HITId}{[required] The ID of the HIT to be deleted.}
}
\value{
An empty list.
}
\description{
The \code{\link[=mturk_delete_hit]{delete_hit}} operation is used to delete HIT
that is no longer needed. Only the Requester who created the HIT can
delete it.

You can only dispose of HITs that are in the \code{Reviewable} state, with
all of their submitted assignments already either approved or rejected.
If you call the DeleteHIT operation on a HIT that is not in the
\code{Reviewable} state (for example, that has not expired, or still has
active assignments), or on a HIT that is Reviewable but without all of
its submitted assignments already approved or rejected, the service will
return an error.
\itemize{
\item HITs are automatically disposed of after 120 days.
\item After you dispose of a HIT, you can no longer approve the HIT's
rejected assignments.
\item Disposed HITs are not returned in results for the ListHITs
operation.
\item Disposing HITs can improve the performance of operations such as
ListReviewableHITs and ListHITs.
}
}
\section{Request syntax}{
\preformatted{svc$delete_hit(
  HITId = "string"
)
}
}

\keyword{internal}
