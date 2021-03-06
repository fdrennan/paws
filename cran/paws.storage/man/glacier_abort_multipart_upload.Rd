% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glacier_operations.R
\name{glacier_abort_multipart_upload}
\alias{glacier_abort_multipart_upload}
\title{This operation aborts a multipart upload identified by the upload ID}
\usage{
glacier_abort_multipart_upload(accountId, vaultName, uploadId)
}
\arguments{
\item{accountId}{[required] The \code{AccountId} value is the AWS account ID of the account that owns the
vault. You can either specify an AWS account ID or optionally a single
'\code{-}' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID
associated with the credentials used to sign the request. If you use an
account ID, do not include any hyphens ('-') in the ID.}

\item{vaultName}{[required] The name of the vault.}

\item{uploadId}{[required] The upload ID of the multipart upload to delete.}
}
\value{
An empty list.
}
\description{
This operation aborts a multipart upload identified by the upload ID.

After the Abort Multipart Upload request succeeds, you cannot upload any
more parts to the multipart upload or complete the multipart upload.
Aborting a completed upload fails. However, aborting an already-aborted
upload will succeed, for a short time. For more information about
uploading a part and completing a multipart upload, see
\code{\link[=glacier_upload_multipart_part]{upload_multipart_part}} and
\code{\link[=glacier_complete_multipart_upload]{complete_multipart_upload}}.

This operation is idempotent.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see \href{https://docs.aws.amazon.com/amazonglacier/latest/dev/auth-and-access-control.html}{Access Control Using AWS Identity and Access Management (IAM)}.

For conceptual information and underlying REST API, see \href{https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html}{Working with Archives in Amazon S3 Glacier}
and \href{https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html}{Abort Multipart Upload}
in the \emph{Amazon Glacier Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$abort_multipart_upload(
  accountId = "string",
  vaultName = "string",
  uploadId = "string"
)
}
}

\examples{
\dontrun{
# The example deletes an in-progress multipart upload to a vault named
# my-vault:
svc$abort_multipart_upload(
  accountId = "-",
  uploadId = "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR...",
  vaultName = "my-vault"
)
}

}
\keyword{internal}
