% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sts_operations.R
\name{sts_assume_role_with_saml}
\alias{sts_assume_role_with_saml}
\title{Returns a set of temporary security credentials for users who have been
authenticated via a SAML authentication response}
\usage{
sts_assume_role_with_saml(RoleArn, PrincipalArn, SAMLAssertion,
  PolicyArns, Policy, DurationSeconds)
}
\arguments{
\item{RoleArn}{[required] The Amazon Resource Name (ARN) of the role that the caller is assuming.}

\item{PrincipalArn}{[required] The Amazon Resource Name (ARN) of the SAML provider in IAM that
describes the IdP.}

\item{SAMLAssertion}{[required] The base-64 encoded SAML authentication response provided by the IdP.

For more information, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml_relying-party.html}{Configuring a Relying Party and Adding Claims}
in the \emph{IAM User Guide}.}

\item{PolicyArns}{The Amazon Resource Names (ARNs) of the IAM managed policies that you
want to use as managed session policies. The policies must exist in the
same account as the role.

This parameter is optional. You can provide up to 10 managed policy
ARNs. However, the plain text that you use for both inline and managed
session policies can't exceed 2,048 characters. For more information
about ARNs, see \href{https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html}{Amazon Resource Names (ARNs) and AWS Service Namespaces}
in the AWS General Reference.

An AWS conversion compresses the passed session policies and session
tags into a packed binary format that has a separate limit. Your request
can fail for this limit even if your plain text meets the other
requirements. The \code{PackedPolicySize} response element indicates by
percentage how close the policies and tags for your request are to the
upper size limit.

Passing policies to this operation returns new temporary credentials.
The resulting session's permissions are the intersection of the role's
identity-based policy and the session policies. You can use the role's
temporary credentials in subsequent AWS API calls to access resources in
the account that owns the role. You cannot use session policies to grant
more permissions than those allowed by the identity-based policy of the
role that is being assumed. For more information, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session}{Session Policies}
in the \emph{IAM User Guide}.}

\item{Policy}{An IAM policy in JSON format that you want to use as an inline session
policy.

This parameter is optional. Passing policies to this operation returns
new temporary credentials. The resulting session's permissions are the
intersection of the role's identity-based policy and the session
policies. You can use the role's temporary credentials in subsequent AWS
API calls to access resources in the account that owns the role. You
cannot use session policies to grant more permissions than those allowed
by the identity-based policy of the role that is being assumed. For more
information, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session}{Session Policies}
in the \emph{IAM User Guide}.

The plain text that you use for both inline and managed session policies
can't exceed 2,048 characters. The JSON policy characters can be any
ASCII character from the space character to the end of the valid
character list (\code{U+0020} through \verb{U+00FF}). It can also include the tab
(\code{U+0009}), linefeed (\verb{U+000A}), and carriage return (\verb{U+000D}) characters.

An AWS conversion compresses the passed session policies and session
tags into a packed binary format that has a separate limit. Your request
can fail for this limit even if your plain text meets the other
requirements. The \code{PackedPolicySize} response element indicates by
percentage how close the policies and tags for your request are to the
upper size limit.}

\item{DurationSeconds}{The duration, in seconds, of the role session. Your role session lasts
for the duration that you specify for the \code{DurationSeconds} parameter,
or until the time specified in the SAML authentication response's
\code{SessionNotOnOrAfter} value, whichever is shorter. You can provide a
\code{DurationSeconds} value from 900 seconds (15 minutes) up to the maximum
session duration setting for the role. This setting can have a value
from 1 hour to 12 hours. If you specify a value higher than this
setting, the operation fails. For example, if you specify a session
duration of 12 hours, but your administrator set the maximum session
duration to 6 hours, your operation fails. To learn how to view the
maximum value for your role, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session}{View the Maximum Session Duration Setting for a Role}
in the \emph{IAM User Guide}.

By default, the value is set to \code{3600} seconds.

The \code{DurationSeconds} parameter is separate from the duration of a
console session that you might request using the returned credentials.
The request to the federation endpoint for a console sign-in token takes
a \code{SessionDuration} parameter that specifies the maximum length of the
console session. For more information, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html}{Creating a URL that Enables Federated Users to Access the AWS Management Console}
in the \emph{IAM User Guide}.}
}
\value{
A list with the following syntax:\preformatted{list(
  Credentials = list(
    AccessKeyId = "string",
    SecretAccessKey = "string",
    SessionToken = "string",
    Expiration = as.POSIXct(
      "2015-01-01"
    )
  ),
  AssumedRoleUser = list(
    AssumedRoleId = "string",
    Arn = "string"
  ),
  PackedPolicySize = 123,
  Subject = "string",
  SubjectType = "string",
  Issuer = "string",
  Audience = "string",
  NameQualifier = "string"
)
}
}
\description{
Returns a set of temporary security credentials for users who have been
authenticated via a SAML authentication response. This operation
provides a mechanism for tying an enterprise identity store or directory
to role-based AWS access without user-specific credentials or
configuration. For a comparison of
\code{\link[=sts_assume_role_with_saml]{assume_role_with_saml}} with the other API
operations that produce temporary credentials, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html}{Requesting Temporary Security Credentials}
and \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison}{Comparing the AWS STS API operations}
in the \emph{IAM User Guide}.

The temporary security credentials returned by this operation consist of
an access key ID, a secret access key, and a security token.
Applications can use these temporary security credentials to sign calls
to AWS services.

\strong{Session Duration}

By default, the temporary security credentials created by
\code{\link[=sts_assume_role_with_saml]{assume_role_with_saml}} last for one hour.
However, you can use the optional \code{DurationSeconds} parameter to specify
the duration of your session. Your role session lasts for the duration
that you specify, or until the time specified in the SAML authentication
response's \code{SessionNotOnOrAfter} value, whichever is shorter. You can
provide a \code{DurationSeconds} value from 900 seconds (15 minutes) up to
the maximum session duration setting for the role. This setting can have
a value from 1 hour to 12 hours. To learn how to view the maximum value
for your role, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session}{View the Maximum Session Duration Setting for a Role}
in the \emph{IAM User Guide}. The maximum session duration limit applies when
you use the \verb{AssumeRole*} API operations or the \verb{assume-role*} CLI
commands. However the limit does not apply when you use those operations
to create a console URL. For more information, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html}{Using IAM Roles}
in the \emph{IAM User Guide}.

\strong{Permissions}

The temporary security credentials created by
\code{\link[=sts_assume_role_with_saml]{assume_role_with_saml}} can be used to make
API calls to any AWS service with the following exception: you cannot
call the STS \code{\link[=sts_get_federation_token]{get_federation_token}} or
\code{\link[=sts_get_session_token]{get_session_token}} API operations.

(Optional) You can pass inline or managed \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session}{session policies}
to this operation. You can pass a single JSON policy document to use as
an inline session policy. You can also specify up to 10 managed policies
to use as managed session policies. The plain text that you use for both
inline and managed session policies can't exceed 2,048 characters.
Passing policies to this operation returns new temporary credentials.
The resulting session's permissions are the intersection of the role's
identity-based policy and the session policies. You can use the role's
temporary credentials in subsequent AWS API calls to access resources in
the account that owns the role. You cannot use session policies to grant
more permissions than those allowed by the identity-based policy of the
role that is being assumed. For more information, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session}{Session Policies}
in the \emph{IAM User Guide}.

Calling \code{\link[=sts_assume_role_with_saml]{assume_role_with_saml}} does not
require the use of AWS security credentials. The identity of the caller
is validated by using keys in the metadata document that is uploaded for
the SAML provider entity for your identity provider.

Calling \code{\link[=sts_assume_role_with_saml]{assume_role_with_saml}} can result
in an entry in your AWS CloudTrail logs. The entry includes the value in
the \code{NameID} element of the SAML assertion. We recommend that you use a
\code{NameIDType} that is not associated with any personally identifiable
information (PII). For example, you could instead use the persistent
identifier (\code{urn:oasis:names:tc:SAML:2.0:nameid-format:persistent}).

\strong{Tags}

(Optional) You can configure your IdP to pass attributes into your SAML
assertion as session tags. Each session tag consists of a key name and
an associated value. For more information about session tags, see
\href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html}{Passing Session Tags in STS}
in the \emph{IAM User Guide}.

You can pass up to 50 session tags. The plain text session tag keys
can’t exceed 128 characters and the values can’t exceed 256 characters.
For these and additional limits, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-limits-entity-length}{IAM and STS Character Limits}
in the \emph{IAM User Guide}.

An AWS conversion compresses the passed session policies and session
tags into a packed binary format that has a separate limit. Your request
can fail for this limit even if your plain text meets the other
requirements. The \code{PackedPolicySize} response element indicates by
percentage how close the policies and tags for your request are to the
upper size limit.

You can pass a session tag with the same key as a tag that is attached
to the role. When you do, session tags override the role's tags with the
same key.

An administrator must grant you the permissions necessary to pass
session tags. The administrator can also create granular permissions to
allow you to pass only specific session tags. For more information, see
\href{https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html}{Tutorial: Using Tags for Attribute-Based Access Control}
in the \emph{IAM User Guide}.

You can set the session tags as transitive. Transitive tags persist
during role chaining. For more information, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining}{Chaining Roles with Session Tags}
in the \emph{IAM User Guide}.

\strong{SAML Configuration}

Before your application can call
\code{\link[=sts_assume_role_with_saml]{assume_role_with_saml}}, you must configure
your SAML identity provider (IdP) to issue the claims required by AWS.
Additionally, you must use AWS Identity and Access Management (IAM) to
create a SAML provider entity in your AWS account that represents your
identity provider. You must also create an IAM role that specifies this
SAML provider in its trust policy.

For more information, see the following resources:
\itemize{
\item \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html}{About SAML 2.0-based Federation}
in the \emph{IAM User Guide}.
\item \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml.html}{Creating SAML Identity Providers}
in the \emph{IAM User Guide}.
\item \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml_relying-party.html}{Configuring a Relying Party and Claims}
in the \emph{IAM User Guide}.
\item \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_saml.html}{Creating a Role for SAML 2.0 Federation}
in the \emph{IAM User Guide}.
}
}
\section{Request syntax}{
\preformatted{svc$assume_role_with_saml(
  RoleArn = "string",
  PrincipalArn = "string",
  SAMLAssertion = "string",
  PolicyArns = list(
    list(
      arn = "string"
    )
  ),
  Policy = "string",
  DurationSeconds = 123
)
}
}

\examples{
\dontrun{
# 
svc$assume_role_with_saml(
  DurationSeconds = 3600L,
  PrincipalArn = "arn:aws:iam::123456789012:saml-provider/SAML-test",
  RoleArn = "arn:aws:iam::123456789012:role/TestSaml",
  SAMLAssertion = "VERYLONGENCODEDASSERTIONEXAMPLExzYW1sOkF1ZGllbmNlPmJsYW5rPC9zYW1sO..."
)
}

}
\keyword{internal}
