% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_create_streaming_distribution}
\alias{cloudfront_create_streaming_distribution}
\title{This API is deprecated}
\usage{
cloudfront_create_streaming_distribution(StreamingDistributionConfig)
}
\arguments{
\item{StreamingDistributionConfig}{[required] The streaming distribution's configuration information.}
}
\value{
A list with the following syntax:\preformatted{list(
  StreamingDistribution = list(
    Id = "string",
    ARN = "string",
    Status = "string",
    LastModifiedTime = as.POSIXct(
      "2015-01-01"
    ),
    DomainName = "string",
    ActiveTrustedSigners = list(
      Enabled = TRUE|FALSE,
      Quantity = 123,
      Items = list(
        list(
          AwsAccountNumber = "string",
          KeyPairIds = list(
            Quantity = 123,
            Items = list(
              "string"
            )
          )
        )
      )
    ),
    StreamingDistributionConfig = list(
      CallerReference = "string",
      S3Origin = list(
        DomainName = "string",
        OriginAccessIdentity = "string"
      ),
      Aliases = list(
        Quantity = 123,
        Items = list(
          "string"
        )
      ),
      Comment = "string",
      Logging = list(
        Enabled = TRUE|FALSE,
        Bucket = "string",
        Prefix = "string"
      ),
      TrustedSigners = list(
        Enabled = TRUE|FALSE,
        Quantity = 123,
        Items = list(
          "string"
        )
      ),
      PriceClass = "PriceClass_100"|"PriceClass_200"|"PriceClass_All",
      Enabled = TRUE|FALSE
    )
  ),
  Location = "string",
  ETag = "string"
)
}
}
\description{
This API is deprecated. Amazon CloudFront is deprecating real-time
messaging protocol (RTMP) distributions on December 31, 2020. For more
information, \href{https://forums.aws.amazon.com/ann.jspa?annID=7356}{read the announcement} on the
Amazon CloudFront discussion forum.
}
\section{Request syntax}{
\preformatted{svc$create_streaming_distribution(
  StreamingDistributionConfig = list(
    CallerReference = "string",
    S3Origin = list(
      DomainName = "string",
      OriginAccessIdentity = "string"
    ),
    Aliases = list(
      Quantity = 123,
      Items = list(
        "string"
      )
    ),
    Comment = "string",
    Logging = list(
      Enabled = TRUE|FALSE,
      Bucket = "string",
      Prefix = "string"
    ),
    TrustedSigners = list(
      Enabled = TRUE|FALSE,
      Quantity = 123,
      Items = list(
        "string"
      )
    ),
    PriceClass = "PriceClass_100"|"PriceClass_200"|"PriceClass_All",
    Enabled = TRUE|FALSE
  )
)
}
}

\keyword{internal}
