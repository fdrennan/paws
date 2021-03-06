% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_update_voice_connector_group}
\alias{chime_update_voice_connector_group}
\title{Updates details for the specified Amazon Chime Voice Connector group,
such as the name and Amazon Chime Voice Connector priority ranking}
\usage{
chime_update_voice_connector_group(VoiceConnectorGroupId, Name,
  VoiceConnectorItems)
}
\arguments{
\item{VoiceConnectorGroupId}{[required] The Amazon Chime Voice Connector group ID.}

\item{Name}{[required] The name of the Amazon Chime Voice Connector group.}

\item{VoiceConnectorItems}{[required] The \code{VoiceConnectorItems} to associate with the group.}
}
\value{
A list with the following syntax:\preformatted{list(
  VoiceConnectorGroup = list(
    VoiceConnectorGroupId = "string",
    Name = "string",
    VoiceConnectorItems = list(
      list(
        VoiceConnectorId = "string",
        Priority = 123
      )
    ),
    CreatedTimestamp = as.POSIXct(
      "2015-01-01"
    ),
    UpdatedTimestamp = as.POSIXct(
      "2015-01-01"
    )
  )
)
}
}
\description{
Updates details for the specified Amazon Chime Voice Connector group,
such as the name and Amazon Chime Voice Connector priority ranking.
}
\section{Request syntax}{
\preformatted{svc$update_voice_connector_group(
  VoiceConnectorGroupId = "string",
  Name = "string",
  VoiceConnectorItems = list(
    list(
      VoiceConnectorId = "string",
      Priority = 123
    )
  )
)
}
}

\keyword{internal}
