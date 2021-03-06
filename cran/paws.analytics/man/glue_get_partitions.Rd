% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_get_partitions}
\alias{glue_get_partitions}
\title{Retrieves information about the partitions in a table}
\usage{
glue_get_partitions(CatalogId, DatabaseName, TableName, Expression,
  NextToken, Segment, MaxResults)
}
\arguments{
\item{CatalogId}{The ID of the Data Catalog where the partitions in question reside. If
none is provided, the AWS account ID is used by default.}

\item{DatabaseName}{[required] The name of the catalog database where the partitions reside.}

\item{TableName}{[required] The name of the partitions' table.}

\item{Expression}{An expression that filters the partitions to be returned.

The expression uses SQL syntax similar to the SQL \code{WHERE} filter clause.
The SQL statement parser
\href{http://jsqlparser.sourceforge.net/home.php}{JSQLParser} parses the
expression.

\emph{Operators}: The following are the operators that you can use in the
\code{Expression} API call:
\subsection{=}{

Checks whether the values of the two operands are equal; if yes, then
the condition becomes true.

Example: Assume 'variable a' holds 10 and 'variable b' holds 20.

(a = b) is not true.
}

\subsection{< >}{

Checks whether the values of two operands are equal; if the values are
not equal, then the condition becomes true.

Example: (a < > b) is true.
}

\subsection{>}{

Checks whether the value of the left operand is greater than the value
of the right operand; if yes, then the condition becomes true.

Example: (a > b) is not true.
}

\subsection{<}{

Checks whether the value of the left operand is less than the value of
the right operand; if yes, then the condition becomes true.

Example: (a < b) is true.
}

\subsection{>=}{

Checks whether the value of the left operand is greater than or equal to
the value of the right operand; if yes, then the condition becomes true.

Example: (a >= b) is not true.
}

\subsection{<=}{

Checks whether the value of the left operand is less than or equal to
the value of the right operand; if yes, then the condition becomes true.

Example: (a <= b) is true.
}

\subsection{AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL}{

Logical operators.

\emph{Supported Partition Key Types}: The following are the supported
partition keys.
\itemize{
\item \code{string}
\item \code{date}
\item \code{timestamp}
\item \code{int}
\item \code{bigint}
\item \code{long}
\item \code{tinyint}
\item \code{smallint}
\item \code{decimal}
}

If an invalid type is encountered, an exception is thrown.

The following list shows the valid operators on each type. When you
define a crawler, the \code{partitionKey} type is created as a \code{STRING}, to
be compatible with the catalog partitions.

\emph{Sample API Call}:
}}

\item{NextToken}{A continuation token, if this is not the first call to retrieve these
partitions.}

\item{Segment}{The segment of the table's partitions to scan in this request.}

\item{MaxResults}{The maximum number of partitions to return in a single response.}
}
\value{
A list with the following syntax:\preformatted{list(
  Partitions = list(
    list(
      Values = list(
        "string"
      ),
      DatabaseName = "string",
      TableName = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastAccessTime = as.POSIXct(
        "2015-01-01"
      ),
      StorageDescriptor = list(
        Columns = list(
          list(
            Name = "string",
            Type = "string",
            Comment = "string",
            Parameters = list(
              "string"
            )
          )
        ),
        Location = "string",
        InputFormat = "string",
        OutputFormat = "string",
        Compressed = TRUE|FALSE,
        NumberOfBuckets = 123,
        SerdeInfo = list(
          Name = "string",
          SerializationLibrary = "string",
          Parameters = list(
            "string"
          )
        ),
        BucketColumns = list(
          "string"
        ),
        SortColumns = list(
          list(
            Column = "string",
            SortOrder = 123
          )
        ),
        Parameters = list(
          "string"
        ),
        SkewedInfo = list(
          SkewedColumnNames = list(
            "string"
          ),
          SkewedColumnValues = list(
            "string"
          ),
          SkewedColumnValueLocationMaps = list(
            "string"
          )
        ),
        StoredAsSubDirectories = TRUE|FALSE,
        SchemaReference = list(
          SchemaId = list(
            SchemaArn = "string",
            SchemaName = "string",
            RegistryName = "string"
          ),
          SchemaVersionId = "string",
          SchemaVersionNumber = 123
        )
      ),
      Parameters = list(
        "string"
      ),
      LastAnalyzedTime = as.POSIXct(
        "2015-01-01"
      ),
      CatalogId = "string"
    )
  ),
  NextToken = "string"
)
}
}
\description{
Retrieves information about the partitions in a table.
}
\section{Request syntax}{
\preformatted{svc$get_partitions(
  CatalogId = "string",
  DatabaseName = "string",
  TableName = "string",
  Expression = "string",
  NextToken = "string",
  Segment = list(
    SegmentNumber = 123,
    TotalSegments = 123
  ),
  MaxResults = 123
)
}
}

\keyword{internal}
