% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wafregional_operations.R
\name{wafregional_get_byte_match_set}
\alias{wafregional_get_byte_match_set}
\title{This is AWS WAF Classic documentation}
\usage{
wafregional_get_byte_match_set(ByteMatchSetId)
}
\arguments{
\item{ByteMatchSetId}{[required] The \code{ByteMatchSetId} of the ByteMatchSet that you want to get.
\code{ByteMatchSetId} is returned by
\code{\link[=wafregional_create_byte_match_set]{create_byte_match_set}} and by
\code{\link[=wafregional_list_byte_match_sets]{list_byte_match_sets}}.}
}
\value{
A list with the following syntax:\preformatted{list(
  ByteMatchSet = list(
    ByteMatchSetId = "string",
    Name = "string",
    ByteMatchTuples = list(
      list(
        FieldToMatch = list(
          Type = "URI"|"QUERY_STRING"|"HEADER"|"METHOD"|"BODY"|"SINGLE_QUERY_ARG"|"ALL_QUERY_ARGS",
          Data = "string"
        ),
        TargetString = raw,
        TextTransformation = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE",
        PositionalConstraint = "EXACTLY"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CONTAINS_WORD"
      )
    )
  )
)
}
}
\description{
This is \strong{AWS WAF Classic} documentation. For more information, see
\href{https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html}{AWS WAF Classic}
in the developer guide.

\strong{For the latest version of AWS WAF}, use the AWS WAFV2 API and see the
\href{https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html}{AWS WAF Developer Guide}.
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

Returns the ByteMatchSet specified by \code{ByteMatchSetId}.
}
\section{Request syntax}{
\preformatted{svc$get_byte_match_set(
  ByteMatchSetId = "string"
)
}
}

\examples{
\dontrun{
# The following example returns the details of a byte match set with the
# ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
svc$get_byte_match_set(
  ByteMatchSetId = "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5"
)
}

}
\keyword{internal}
