% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{translate}
\alias{translate}
\title{Amazon Translate}
\usage{
translate(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
Provides translation between one source language and another of the same
set of languages.
}
\section{Service syntax}{
\preformatted{svc <- translate(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string"
    ),
    endpoint = "string",
    region = "string"
  )
)
}
}

\section{Operations}{

\tabular{ll}{
\link[=translate_create_parallel_data]{create_parallel_data} \tab Creates a parallel data resource in Amazon Translate by importing an input file from Amazon S3\cr
\link[=translate_delete_parallel_data]{delete_parallel_data} \tab Deletes a parallel data resource in Amazon Translate\cr
\link[=translate_delete_terminology]{delete_terminology} \tab A synchronous action that deletes a custom terminology\cr
\link[=translate_describe_text_translation_job]{describe_text_translation_job} \tab Gets the properties associated with an asycnhronous batch translation job including name, ID, status, source and target languages, input/output S3 buckets, and so on\cr
\link[=translate_get_parallel_data]{get_parallel_data} \tab Provides information about a parallel data resource\cr
\link[=translate_get_terminology]{get_terminology} \tab Retrieves a custom terminology\cr
\link[=translate_import_terminology]{import_terminology} \tab Creates or updates a custom terminology, depending on whether or not one already exists for the given terminology name\cr
\link[=translate_list_parallel_data]{list_parallel_data} \tab Provides a list of your parallel data resources in Amazon Translate\cr
\link[=translate_list_terminologies]{list_terminologies} \tab Provides a list of custom terminologies associated with your account\cr
\link[=translate_list_text_translation_jobs]{list_text_translation_jobs} \tab Gets a list of the batch translation jobs that you have submitted\cr
\link[=translate_start_text_translation_job]{start_text_translation_job} \tab Starts an asynchronous batch translation job\cr
\link[=translate_stop_text_translation_job]{stop_text_translation_job} \tab Stops an asynchronous batch translation job that is in progress\cr
\link[=translate_translate_text]{translate_text} \tab Translates input text from the source language to the target language\cr
\link[=translate_update_parallel_data]{update_parallel_data} \tab Updates a previously created parallel data resource by importing a new input file from Amazon S3
}
}

\examples{
\dontrun{
svc <- translate()
svc$create_parallel_data(
  Foo = 123
)
}

}
