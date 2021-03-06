% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudsearch_operations.R
\name{cloudsearch_describe_index_fields}
\alias{cloudsearch_describe_index_fields}
\title{Gets information about the index fields configured for the search domain}
\usage{
cloudsearch_describe_index_fields(DomainName, FieldNames, Deployed)
}
\arguments{
\item{DomainName}{[required] The name of the domain you want to describe.}

\item{FieldNames}{A list of the index fields you want to describe. If not specified,
information is returned for all configured index fields.}

\item{Deployed}{Whether to display the deployed configuration (\code{true}) or include any
pending changes (\code{false}). Defaults to \code{false}.}
}
\value{
A list with the following syntax:\preformatted{list(
  IndexFields = list(
    list(
      Options = list(
        IndexFieldName = "string",
        IndexFieldType = "int"|"double"|"literal"|"text"|"date"|"latlon"|"int-array"|"double-array"|"literal-array"|"text-array"|"date-array",
        IntOptions = list(
          DefaultValue = 123,
          SourceField = "string",
          FacetEnabled = TRUE|FALSE,
          SearchEnabled = TRUE|FALSE,
          ReturnEnabled = TRUE|FALSE,
          SortEnabled = TRUE|FALSE
        ),
        DoubleOptions = list(
          DefaultValue = 123.0,
          SourceField = "string",
          FacetEnabled = TRUE|FALSE,
          SearchEnabled = TRUE|FALSE,
          ReturnEnabled = TRUE|FALSE,
          SortEnabled = TRUE|FALSE
        ),
        LiteralOptions = list(
          DefaultValue = "string",
          SourceField = "string",
          FacetEnabled = TRUE|FALSE,
          SearchEnabled = TRUE|FALSE,
          ReturnEnabled = TRUE|FALSE,
          SortEnabled = TRUE|FALSE
        ),
        TextOptions = list(
          DefaultValue = "string",
          SourceField = "string",
          ReturnEnabled = TRUE|FALSE,
          SortEnabled = TRUE|FALSE,
          HighlightEnabled = TRUE|FALSE,
          AnalysisScheme = "string"
        ),
        DateOptions = list(
          DefaultValue = "string",
          SourceField = "string",
          FacetEnabled = TRUE|FALSE,
          SearchEnabled = TRUE|FALSE,
          ReturnEnabled = TRUE|FALSE,
          SortEnabled = TRUE|FALSE
        ),
        LatLonOptions = list(
          DefaultValue = "string",
          SourceField = "string",
          FacetEnabled = TRUE|FALSE,
          SearchEnabled = TRUE|FALSE,
          ReturnEnabled = TRUE|FALSE,
          SortEnabled = TRUE|FALSE
        ),
        IntArrayOptions = list(
          DefaultValue = 123,
          SourceFields = "string",
          FacetEnabled = TRUE|FALSE,
          SearchEnabled = TRUE|FALSE,
          ReturnEnabled = TRUE|FALSE
        ),
        DoubleArrayOptions = list(
          DefaultValue = 123.0,
          SourceFields = "string",
          FacetEnabled = TRUE|FALSE,
          SearchEnabled = TRUE|FALSE,
          ReturnEnabled = TRUE|FALSE
        ),
        LiteralArrayOptions = list(
          DefaultValue = "string",
          SourceFields = "string",
          FacetEnabled = TRUE|FALSE,
          SearchEnabled = TRUE|FALSE,
          ReturnEnabled = TRUE|FALSE
        ),
        TextArrayOptions = list(
          DefaultValue = "string",
          SourceFields = "string",
          ReturnEnabled = TRUE|FALSE,
          HighlightEnabled = TRUE|FALSE,
          AnalysisScheme = "string"
        ),
        DateArrayOptions = list(
          DefaultValue = "string",
          SourceFields = "string",
          FacetEnabled = TRUE|FALSE,
          SearchEnabled = TRUE|FALSE,
          ReturnEnabled = TRUE|FALSE
        )
      ),
      Status = list(
        CreationDate = as.POSIXct(
          "2015-01-01"
        ),
        UpdateDate = as.POSIXct(
          "2015-01-01"
        ),
        UpdateVersion = 123,
        State = "RequiresIndexDocuments"|"Processing"|"Active"|"FailedToValidate",
        PendingDeletion = TRUE|FALSE
      )
    )
  )
)
}
}
\description{
Gets information about the index fields configured for the search
domain. Can be limited to specific fields by name. By default, shows all
fields and includes any pending changes to the configuration. Set the
\code{Deployed} option to \code{true} to show the active configuration and exclude
pending changes. For more information, see \href{https://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html}{Getting Domain Information}
in the \emph{Amazon CloudSearch Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$describe_index_fields(
  DomainName = "string",
  FieldNames = list(
    "string"
  ),
  Deployed = TRUE|FALSE
)
}
}

\keyword{internal}
