% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/translate_operations.R
\name{translate_get_terminology}
\alias{translate_get_terminology}
\title{Retrieves a custom terminology}
\usage{
translate_get_terminology(Name, TerminologyDataFormat)
}
\arguments{
\item{Name}{[required] The name of the custom terminology being retrieved.}

\item{TerminologyDataFormat}{[required] The data format of the custom terminology being retrieved, either CSV or
TMX.}
}
\value{
A list with the following syntax:\preformatted{list(
  TerminologyProperties = list(
    Name = "string",
    Description = "string",
    Arn = "string",
    SourceLanguageCode = "string",
    TargetLanguageCodes = list(
      "string"
    ),
    EncryptionKey = list(
      Type = "KMS",
      Id = "string"
    ),
    SizeBytes = 123,
    TermCount = 123,
    CreatedAt = as.POSIXct(
      "2015-01-01"
    ),
    LastUpdatedAt = as.POSIXct(
      "2015-01-01"
    )
  ),
  TerminologyDataLocation = list(
    RepositoryType = "string",
    Location = "string"
  )
)
}
}
\description{
Retrieves a custom terminology.
}
\section{Request syntax}{
\preformatted{svc$get_terminology(
  Name = "string",
  TerminologyDataFormat = "CSV"|"TMX"
)
}
}

\keyword{internal}
