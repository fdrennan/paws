% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comprehend_operations.R
\name{comprehend_stop_training_entity_recognizer}
\alias{comprehend_stop_training_entity_recognizer}
\title{Stops an entity recognizer training job while in progress}
\usage{
comprehend_stop_training_entity_recognizer(EntityRecognizerArn)
}
\arguments{
\item{EntityRecognizerArn}{[required] The Amazon Resource Name (ARN) that identifies the entity recognizer
currently being trained.}
}
\value{
An empty list.
}
\description{
Stops an entity recognizer training job while in progress.

If the training job state is \code{TRAINING}, the job is marked for
termination and put into the \code{STOP_REQUESTED} state. If the training job
completes before it can be stopped, it is put into the \code{TRAINED};
otherwise the training job is stopped and putted into the \code{STOPPED}
state and the service sends back an HTTP 200 response with an empty HTTP
body.
}
\section{Request syntax}{
\preformatted{svc$stop_training_entity_recognizer(
  EntityRecognizerArn = "string"
)
}
}

\keyword{internal}
