% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/snowball_operations.R
\name{snowball_describe_addresses}
\alias{snowball_describe_addresses}
\title{Returns a specified number of ADDRESS objects}
\usage{
snowball_describe_addresses(MaxResults, NextToken)
}
\arguments{
\item{MaxResults}{The number of \code{ADDRESS} objects to return.}

\item{NextToken}{HTTP requests are stateless. To identify what object comes "next" in the
list of \code{ADDRESS} objects, you have the option of specifying a value for
\code{NextToken} as the starting point for your list of returned addresses.}
}
\value{
A list with the following syntax:\preformatted{list(
  Addresses = list(
    list(
      AddressId = "string",
      Name = "string",
      Company = "string",
      Street1 = "string",
      Street2 = "string",
      Street3 = "string",
      City = "string",
      StateOrProvince = "string",
      PrefectureOrDistrict = "string",
      Landmark = "string",
      Country = "string",
      PostalCode = "string",
      PhoneNumber = "string",
      IsRestricted = TRUE|FALSE
    )
  ),
  NextToken = "string"
)
}
}
\description{
Returns a specified number of \code{ADDRESS} objects. Calling this API in one
of the US regions will return addresses from the list of all addresses
associated with this account in all US regions.
}
\section{Request syntax}{
\preformatted{svc$describe_addresses(
  MaxResults = 123,
  NextToken = "string"
)
}
}

\examples{
\dontrun{
# This operation describes all the addresses that you've created for AWS
# Snowball. Calling this API in one of the US regions will return
# addresses from the list of all addresses associated with this account in
# all US regions.
svc$describe_addresses()
}

}
\keyword{internal}
