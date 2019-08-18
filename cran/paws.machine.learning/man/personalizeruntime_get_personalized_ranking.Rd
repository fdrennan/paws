% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/personalizeruntime_operations.R
\name{personalizeruntime_get_personalized_ranking}
\alias{personalizeruntime_get_personalized_ranking}
\title{Re-ranks a list of recommended items for the given user}
\usage{
personalizeruntime_get_personalized_ranking(campaignArn, inputList,
  userId)
}
\arguments{
\item{campaignArn}{[required] The Amazon Resource Name (ARN) of the campaign to use for generating the
personalized ranking.}

\item{inputList}{[required] A list of items (itemId's) to rank. If an item was not included in the
training dataset, the item is appended to the end of the reranked list.}

\item{userId}{[required] The user for which you want the campaign to provide a personalized
ranking.}
}
\description{
Re-ranks a list of recommended items for the given user. The first item
in the list is deemed the most likely item to be of interest to the
user.
}
\details{
The solution backing the campaign must have been created using a recipe
of type PERSONALIZED\_RANKING.
}
\section{Request syntax}{
\preformatted{svc$get_personalized_ranking(
  campaignArn = "string",
  inputList = list(
    "string"
  ),
  userId = "string"
)
}
}

\keyword{internal}