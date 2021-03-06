% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigatewayv2_operations.R
\name{apigatewayv2_get_domain_name}
\alias{apigatewayv2_get_domain_name}
\title{Gets a domain name}
\usage{
apigatewayv2_get_domain_name(DomainName)
}
\arguments{
\item{DomainName}{[required] The domain name.}
}
\value{
A list with the following syntax:\preformatted{list(
  ApiMappingSelectionExpression = "string",
  DomainName = "string",
  DomainNameConfigurations = list(
    list(
      ApiGatewayDomainName = "string",
      CertificateArn = "string",
      CertificateName = "string",
      CertificateUploadDate = as.POSIXct(
        "2015-01-01"
      ),
      DomainNameStatus = "AVAILABLE"|"UPDATING",
      DomainNameStatusMessage = "string",
      EndpointType = "REGIONAL"|"EDGE",
      HostedZoneId = "string",
      SecurityPolicy = "TLS_1_0"|"TLS_1_2"
    )
  ),
  MutualTlsAuthentication = list(
    TruststoreUri = "string",
    TruststoreVersion = "string",
    TruststoreWarnings = list(
      "string"
    )
  ),
  Tags = list(
    "string"
  )
)
}
}
\description{
Gets a domain name.
}
\section{Request syntax}{
\preformatted{svc$get_domain_name(
  DomainName = "string"
)
}
}

\keyword{internal}
