% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_search_tables}
\alias{glue_search_tables}
\title{Searches a set of tables based on properties in the table metadata as
well as on the parent database}
\usage{
glue_search_tables(CatalogId, NextToken, Filters, SearchText,
  SortCriteria, MaxResults)
}
\arguments{
\item{CatalogId}{A unique identifier, consisting of \verb{ <i>account_id</i>/datalake}.}

\item{NextToken}{A continuation token, included if this is a continuation call.}

\item{Filters}{A list of key-value pairs, and a comparator used to filter the search
results. Returns all entities matching the predicate.}

\item{SearchText}{A string used for a text search.

Specifying a value in quotes filters based on an exact match to the
value.}

\item{SortCriteria}{A list of criteria for sorting the results by a field name, in an
ascending or descending order.}

\item{MaxResults}{The maximum number of tables to return in a single response.}
}
\description{
Searches a set of tables based on properties in the table metadata as
well as on the parent database. You can search against text or filter
conditions.
}
\details{
You can only get tables that you have access to based on the security
policies defined in Lake Formation. You need at least a read-only access
to the table for it to be returned. If you do not have access to all the
columns in the table, these columns will not be searched against when
returning the list of tables back to you. If you have access to the
columns but not the data in the columns, those columns and the
associated metadata for those columns will be included in the search.
}
\section{Request syntax}{
\preformatted{svc$search_tables(
  CatalogId = "string",
  NextToken = "string",
  Filters = list(
    list(
      Key = "string",
      Value = "string",
      Comparator = "EQUALS"|"GREATER_THAN"|"LESS_THAN"|"GREATER_THAN_EQUALS"|"LESS_THAN_EQUALS"
    )
  ),
  SearchText = "string",
  SortCriteria = list(
    list(
      FieldName = "string",
      Sort = "ASC"|"DESC"
    )
  ),
  MaxResults = 123
)
}
}

\keyword{internal}