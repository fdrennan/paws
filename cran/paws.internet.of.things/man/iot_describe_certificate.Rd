% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_describe_certificate}
\alias{iot_describe_certificate}
\title{Gets information about the specified certificate}
\usage{
iot_describe_certificate(certificateId)
}
\arguments{
\item{certificateId}{[required] The ID of the certificate. (The last part of the certificate ARN
contains the certificate ID.)}
}
\value{
A list with the following syntax:\preformatted{list(
  certificateDescription = list(
    certificateArn = "string",
    certificateId = "string",
    caCertificateId = "string",
    status = "ACTIVE"|"INACTIVE"|"REVOKED"|"PENDING_TRANSFER"|"REGISTER_INACTIVE"|"PENDING_ACTIVATION",
    certificatePem = "string",
    ownedBy = "string",
    previousOwnedBy = "string",
    creationDate = as.POSIXct(
      "2015-01-01"
    ),
    lastModifiedDate = as.POSIXct(
      "2015-01-01"
    ),
    customerVersion = 123,
    transferData = list(
      transferMessage = "string",
      rejectReason = "string",
      transferDate = as.POSIXct(
        "2015-01-01"
      ),
      acceptDate = as.POSIXct(
        "2015-01-01"
      ),
      rejectDate = as.POSIXct(
        "2015-01-01"
      )
    ),
    generationId = "string",
    validity = list(
      notBefore = as.POSIXct(
        "2015-01-01"
      ),
      notAfter = as.POSIXct(
        "2015-01-01"
      )
    ),
    certificateMode = "DEFAULT"|"SNI_ONLY"
  )
)
}
}
\description{
Gets information about the specified certificate.
}
\section{Request syntax}{
\preformatted{svc$describe_certificate(
  certificateId = "string"
)
}
}

\keyword{internal}
