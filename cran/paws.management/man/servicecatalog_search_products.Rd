% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicecatalog_operations.R
\name{servicecatalog_search_products}
\alias{servicecatalog_search_products}
\title{Gets information about the products to which the caller has access}
\usage{
servicecatalog_search_products(AcceptLanguage, Filters, PageSize,
  SortBy, SortOrder, PageToken)
}
\arguments{
\item{AcceptLanguage}{The language code.
\itemize{
\item \code{en} - English (default)
\item \code{jp} - Japanese
\item \code{zh} - Chinese
}}

\item{Filters}{The search filters. If no search filters are specified, the output
includes all products to which the caller has access.}

\item{PageSize}{The maximum number of items to return with this call.}

\item{SortBy}{The sort field. If no value is specified, the results are not sorted.}

\item{SortOrder}{The sort order. If no value is specified, the results are not sorted.}

\item{PageToken}{The page token for the next set of results. To retrieve the first set of
results, use null.}
}
\value{
A list with the following syntax:\preformatted{list(
  ProductViewSummaries = list(
    list(
      Id = "string",
      ProductId = "string",
      Name = "string",
      Owner = "string",
      ShortDescription = "string",
      Type = "CLOUD_FORMATION_TEMPLATE"|"MARKETPLACE",
      Distributor = "string",
      HasDefaultPath = TRUE|FALSE,
      SupportEmail = "string",
      SupportDescription = "string",
      SupportUrl = "string"
    )
  ),
  ProductViewAggregations = list(
    list(
      list(
        Value = "string",
        ApproximateCount = 123
      )
    )
  ),
  NextPageToken = "string"
)
}
}
\description{
Gets information about the products to which the caller has access.
}
\section{Request syntax}{
\preformatted{svc$search_products(
  AcceptLanguage = "string",
  Filters = list(
    list(
      "string"
    )
  ),
  PageSize = 123,
  SortBy = "Title"|"VersionCount"|"CreationDate",
  SortOrder = "ASCENDING"|"DESCENDING",
  PageToken = "string"
)
}
}

\keyword{internal}
