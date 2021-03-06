% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/textract_operations.R
\name{textract_analyze_document}
\alias{textract_analyze_document}
\title{Analyzes an input document for relationships between detected items}
\usage{
textract_analyze_document(Document, FeatureTypes, HumanLoopConfig)
}
\arguments{
\item{Document}{[required] The input document as base64-encoded bytes or an Amazon S3 object. If
you use the AWS CLI to call Amazon Textract operations, you can't pass
image bytes. The document must be an image in JPEG or PNG format.

If you're using an AWS SDK to call Amazon Textract, you might not need
to base64-encode image bytes that are passed using the \code{Bytes} field.}

\item{FeatureTypes}{[required] A list of the types of analysis to perform. Add TABLES to the list to
return information about the tables that are detected in the input
document. Add FORMS to return detected form data. To perform both types
of analysis, add TABLES and FORMS to \code{FeatureTypes}. All lines and words
detected in the document are included in the response (including text
that isn't related to the value of \code{FeatureTypes}).}

\item{HumanLoopConfig}{Sets the configuration for the human in the loop workflow for analyzing
documents.}
}
\value{
A list with the following syntax:\preformatted{list(
  DocumentMetadata = list(
    Pages = 123
  ),
  Blocks = list(
    list(
      BlockType = "KEY_VALUE_SET"|"PAGE"|"LINE"|"WORD"|"TABLE"|"CELL"|"SELECTION_ELEMENT",
      Confidence = 123.0,
      Text = "string",
      TextType = "HANDWRITING"|"PRINTED",
      RowIndex = 123,
      ColumnIndex = 123,
      RowSpan = 123,
      ColumnSpan = 123,
      Geometry = list(
        BoundingBox = list(
          Width = 123.0,
          Height = 123.0,
          Left = 123.0,
          Top = 123.0
        ),
        Polygon = list(
          list(
            X = 123.0,
            Y = 123.0
          )
        )
      ),
      Id = "string",
      Relationships = list(
        list(
          Type = "VALUE"|"CHILD"|"COMPLEX_FEATURES",
          Ids = list(
            "string"
          )
        )
      ),
      EntityTypes = list(
        "KEY"|"VALUE"
      ),
      SelectionStatus = "SELECTED"|"NOT_SELECTED",
      Page = 123
    )
  ),
  HumanLoopActivationOutput = list(
    HumanLoopArn = "string",
    HumanLoopActivationReasons = list(
      "string"
    ),
    HumanLoopActivationConditionsEvaluationResults = "string"
  ),
  AnalyzeDocumentModelVersion = "string"
)
}
}
\description{
Analyzes an input document for relationships between detected items.

The types of information returned are as follows:
\itemize{
\item Form data (key-value pairs). The related information is returned in
two Block objects, each of type \code{KEY_VALUE_SET}: a KEY \code{Block}
object and a VALUE \code{Block} object. For example, \emph{Name: Ana Silva
Carolina} contains a key and value. \emph{Name:} is the key. \emph{Ana Silva
Carolina} is the value.
\item Table and table cell data. A TABLE \code{Block} object contains
information about a detected table. A CELL \code{Block} object is
returned for each cell in a table.
\item Lines and words of text. A LINE \code{Block} object contains one or more
WORD \code{Block} objects. All lines and words that are detected in the
document are returned (including text that doesn't have a
relationship with the value of \code{FeatureTypes}).
}

Selection elements such as check boxes and option buttons (radio
buttons) can be detected in form data and in tables. A
SELECTION_ELEMENT \code{Block} object contains information about a selection
element, including the selection status.

You can choose which type of analysis to perform by specifying the
\code{FeatureTypes} list.

The output is returned in a list of \code{Block} objects.

\code{\link[=textract_analyze_document]{analyze_document}} is a synchronous
operation. To analyze documents asynchronously, use
\code{\link[=textract_start_document_analysis]{start_document_analysis}}.

For more information, see \href{https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html}{Document Text Analysis}.
}
\section{Request syntax}{
\preformatted{svc$analyze_document(
  Document = list(
    Bytes = raw,
    S3Object = list(
      Bucket = "string",
      Name = "string",
      Version = "string"
    )
  ),
  FeatureTypes = list(
    "TABLES"|"FORMS"
  ),
  HumanLoopConfig = list(
    HumanLoopName = "string",
    FlowDefinitionArn = "string",
    DataAttributes = list(
      ContentClassifiers = list(
        "FreeOfPersonallyIdentifiableInformation"|"FreeOfAdultContent"
      )
    )
  )
)
}
}

\keyword{internal}
