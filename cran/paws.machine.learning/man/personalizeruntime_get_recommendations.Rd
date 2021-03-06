% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/personalizeruntime_operations.R
\name{personalizeruntime_get_recommendations}
\alias{personalizeruntime_get_recommendations}
\title{Returns a list of recommended items}
\usage{
personalizeruntime_get_recommendations(campaignArn, itemId, userId,
  numResults, context, filterArn, filterValues)
}
\arguments{
\item{campaignArn}{[required] The Amazon Resource Name (ARN) of the campaign to use for getting
recommendations.}

\item{itemId}{The item ID to provide recommendations for.

Required for \code{RELATED_ITEMS} recipe type.}

\item{userId}{The user ID to provide recommendations for.

Required for \code{USER_PERSONALIZATION} recipe type.}

\item{numResults}{The number of results to return. The default is 25. The maximum is 500.}

\item{context}{The contextual metadata to use when getting recommendations. Contextual
metadata includes any interaction information that might be relevant
when getting a user's recommendations, such as the user's current
location or device type.}

\item{filterArn}{The ARN of the filter to apply to the returned recommendations. For more
information, see \href{https://docs.aws.amazon.com/personalize/latest/dg/filter.html}{Filtering Recommendations}.

When using this parameter, be sure the filter resource is \code{ACTIVE}.}

\item{filterValues}{The values to use when filtering recommendations. For each placeholder
parameter in your filter expression, provide the parameter name (in
matching case) as a key and the filter value(s) as the corresponding
value. Separate multiple values for one parameter with a comma.

For filter expressions that use an \code{INCLUDE} element to include items,
you must provide values for all parameters that are defined in the
expression. For filters with expressions that use an \code{EXCLUDE} element
to exclude items, you can omit the \code{filter-values}.In this case, Amazon
Personalize doesn't use that portion of the expression to filter
recommendations.

For more information, see \href{https://docs.aws.amazon.com/personalize/latest/dg/filter.html}{Filtering Recommendations}.}
}
\value{
A list with the following syntax:\preformatted{list(
  itemList = list(
    list(
      itemId = "string",
      score = 123.0
    )
  ),
  recommendationId = "string"
)
}
}
\description{
Returns a list of recommended items. The required input depends on the
recipe type used to create the solution backing the campaign, as
follows:
\itemize{
\item RELATED_ITEMS - \code{itemId} required, \code{userId} not used
\item USER_PERSONALIZATION - \code{itemId} optional, \code{userId} required
}

Campaigns that are backed by a solution created using a recipe of type
PERSONALIZED_RANKING use the API.
}
\section{Request syntax}{
\preformatted{svc$get_recommendations(
  campaignArn = "string",
  itemId = "string",
  userId = "string",
  numResults = 123,
  context = list(
    "string"
  ),
  filterArn = "string",
  filterValues = list(
    "string"
  )
)
}
}

\keyword{internal}
