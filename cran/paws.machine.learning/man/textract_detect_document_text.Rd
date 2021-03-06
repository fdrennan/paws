% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/textract_operations.R
\name{textract_detect_document_text}
\alias{textract_detect_document_text}
\title{Detects text in the input document}
\usage{
textract_detect_document_text(Document)
}
\arguments{
\item{Document}{[required] The input document as base64-encoded bytes or an Amazon S3 object. If
you use the AWS CLI to call Amazon Textract operations, you can't pass
image bytes. The document must be an image in JPEG or PNG format.

If you're using an AWS SDK to call Amazon Textract, you might not need
to base64-encode image bytes that are passed using the \code{Bytes} field.}
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
  DetectDocumentTextModelVersion = "string"
)
}
}
\description{
Detects text in the input document. Amazon Textract can detect lines of
text and the words that make up a line of text. The input document must
be an image in JPEG or PNG format.
\code{\link[=textract_detect_document_text]{detect_document_text}} returns the
detected text in an array of Block objects.

Each document page has as an associated \code{Block} of type PAGE. Each PAGE
\code{Block} object is the parent of LINE \code{Block} objects that represent the
lines of detected text on a page. A LINE \code{Block} object is a parent for
each word that makes up the line. Words are represented by \code{Block}
objects of type WORD.

\code{\link[=textract_detect_document_text]{detect_document_text}} is a synchronous
operation. To analyze documents asynchronously, use
\code{\link[=textract_start_document_text_detection]{start_document_text_detection}}.

For more information, see \href{https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html}{Document Text Detection}.
}
\section{Request syntax}{
\preformatted{svc$detect_document_text(
  Document = list(
    Bytes = raw,
    S3Object = list(
      Bucket = "string",
      Name = "string",
      Version = "string"
    )
  )
)
}
}

\keyword{internal}
