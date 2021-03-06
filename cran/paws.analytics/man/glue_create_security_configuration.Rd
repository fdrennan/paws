% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_create_security_configuration}
\alias{glue_create_security_configuration}
\title{Creates a new security configuration}
\usage{
glue_create_security_configuration(Name, EncryptionConfiguration)
}
\arguments{
\item{Name}{[required] The name for the new security configuration.}

\item{EncryptionConfiguration}{[required] The encryption configuration for the new security configuration.}
}
\value{
A list with the following syntax:\preformatted{list(
  Name = "string",
  CreatedTimestamp = as.POSIXct(
    "2015-01-01"
  )
)
}
}
\description{
Creates a new security configuration. A security configuration is a set
of security properties that can be used by AWS Glue. You can use a
security configuration to encrypt data at rest. For information about
using security configurations in AWS Glue, see \href{https://docs.aws.amazon.com/glue/latest/dg/encryption-security-configuration.html}{Encrypting Data Written by Crawlers, Jobs, and Development Endpoints}.
}
\section{Request syntax}{
\preformatted{svc$create_security_configuration(
  Name = "string",
  EncryptionConfiguration = list(
    S3Encryption = list(
      list(
        S3EncryptionMode = "DISABLED"|"SSE-KMS"|"SSE-S3",
        KmsKeyArn = "string"
      )
    ),
    CloudWatchEncryption = list(
      CloudWatchEncryptionMode = "DISABLED"|"SSE-KMS",
      KmsKeyArn = "string"
    ),
    JobBookmarksEncryption = list(
      JobBookmarksEncryptionMode = "DISABLED"|"CSE-KMS",
      KmsKeyArn = "string"
    )
  )
)
}
}

\keyword{internal}
