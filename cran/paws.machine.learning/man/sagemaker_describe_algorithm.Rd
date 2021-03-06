% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_describe_algorithm}
\alias{sagemaker_describe_algorithm}
\title{Returns a description of the specified algorithm that is in your account}
\usage{
sagemaker_describe_algorithm(AlgorithmName)
}
\arguments{
\item{AlgorithmName}{[required] The name of the algorithm to describe.}
}
\value{
A list with the following syntax:\preformatted{list(
  AlgorithmName = "string",
  AlgorithmArn = "string",
  AlgorithmDescription = "string",
  CreationTime = as.POSIXct(
    "2015-01-01"
  ),
  TrainingSpecification = list(
    TrainingImage = "string",
    TrainingImageDigest = "string",
    SupportedHyperParameters = list(
      list(
        Name = "string",
        Description = "string",
        Type = "Integer"|"Continuous"|"Categorical"|"FreeText",
        Range = list(
          IntegerParameterRangeSpecification = list(
            MinValue = "string",
            MaxValue = "string"
          ),
          ContinuousParameterRangeSpecification = list(
            MinValue = "string",
            MaxValue = "string"
          ),
          CategoricalParameterRangeSpecification = list(
            Values = list(
              "string"
            )
          )
        ),
        IsTunable = TRUE|FALSE,
        IsRequired = TRUE|FALSE,
        DefaultValue = "string"
      )
    ),
    SupportedTrainingInstanceTypes = list(
      "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.p4d.24xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5n.xlarge"|"ml.c5n.2xlarge"|"ml.c5n.4xlarge"|"ml.c5n.9xlarge"|"ml.c5n.18xlarge"
    ),
    SupportsDistributedTraining = TRUE|FALSE,
    MetricDefinitions = list(
      list(
        Name = "string",
        Regex = "string"
      )
    ),
    TrainingChannels = list(
      list(
        Name = "string",
        Description = "string",
        IsRequired = TRUE|FALSE,
        SupportedContentTypes = list(
          "string"
        ),
        SupportedCompressionTypes = list(
          "None"|"Gzip"
        ),
        SupportedInputModes = list(
          "Pipe"|"File"
        )
      )
    ),
    SupportedTuningJobObjectiveMetrics = list(
      list(
        Type = "Maximize"|"Minimize",
        MetricName = "string"
      )
    )
  ),
  InferenceSpecification = list(
    Containers = list(
      list(
        ContainerHostname = "string",
        Image = "string",
        ImageDigest = "string",
        ModelDataUrl = "string",
        ProductId = "string"
      )
    ),
    SupportedTransformInstanceTypes = list(
      "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"
    ),
    SupportedRealtimeInferenceInstanceTypes = list(
      "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.12xlarge"|"ml.m5d.24xlarge"|"ml.c4.large"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.large"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.12xlarge"|"ml.r5.24xlarge"|"ml.r5d.large"|"ml.r5d.xlarge"|"ml.r5d.2xlarge"|"ml.r5d.4xlarge"|"ml.r5d.12xlarge"|"ml.r5d.24xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"
    ),
    SupportedContentTypes = list(
      "string"
    ),
    SupportedResponseMIMETypes = list(
      "string"
    )
  ),
  ValidationSpecification = list(
    ValidationRole = "string",
    ValidationProfiles = list(
      list(
        ProfileName = "string",
        TrainingJobDefinition = list(
          TrainingInputMode = "Pipe"|"File",
          HyperParameters = list(
            "string"
          ),
          InputDataConfig = list(
            list(
              ChannelName = "string",
              DataSource = list(
                S3DataSource = list(
                  S3DataType = "ManifestFile"|"S3Prefix"|"AugmentedManifestFile",
                  S3Uri = "string",
                  S3DataDistributionType = "FullyReplicated"|"ShardedByS3Key",
                  AttributeNames = list(
                    "string"
                  )
                ),
                FileSystemDataSource = list(
                  FileSystemId = "string",
                  FileSystemAccessMode = "rw"|"ro",
                  FileSystemType = "EFS"|"FSxLustre",
                  DirectoryPath = "string"
                )
              ),
              ContentType = "string",
              CompressionType = "None"|"Gzip",
              RecordWrapperType = "None"|"RecordIO",
              InputMode = "Pipe"|"File",
              ShuffleConfig = list(
                Seed = 123
              )
            )
          ),
          OutputDataConfig = list(
            KmsKeyId = "string",
            S3OutputPath = "string"
          ),
          ResourceConfig = list(
            InstanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.p4d.24xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5n.xlarge"|"ml.c5n.2xlarge"|"ml.c5n.4xlarge"|"ml.c5n.9xlarge"|"ml.c5n.18xlarge",
            InstanceCount = 123,
            VolumeSizeInGB = 123,
            VolumeKmsKeyId = "string"
          ),
          StoppingCondition = list(
            MaxRuntimeInSeconds = 123,
            MaxWaitTimeInSeconds = 123
          )
        ),
        TransformJobDefinition = list(
          MaxConcurrentTransforms = 123,
          MaxPayloadInMB = 123,
          BatchStrategy = "MultiRecord"|"SingleRecord",
          Environment = list(
            "string"
          ),
          TransformInput = list(
            DataSource = list(
              S3DataSource = list(
                S3DataType = "ManifestFile"|"S3Prefix"|"AugmentedManifestFile",
                S3Uri = "string"
              )
            ),
            ContentType = "string",
            CompressionType = "None"|"Gzip",
            SplitType = "None"|"Line"|"RecordIO"|"TFRecord"
          ),
          TransformOutput = list(
            S3OutputPath = "string",
            Accept = "string",
            AssembleWith = "None"|"Line",
            KmsKeyId = "string"
          ),
          TransformResources = list(
            InstanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge",
            InstanceCount = 123,
            VolumeKmsKeyId = "string"
          )
        )
      )
    )
  ),
  AlgorithmStatus = "Pending"|"InProgress"|"Completed"|"Failed"|"Deleting",
  AlgorithmStatusDetails = list(
    ValidationStatuses = list(
      list(
        Name = "string",
        Status = "NotStarted"|"InProgress"|"Completed"|"Failed",
        FailureReason = "string"
      )
    ),
    ImageScanStatuses = list(
      list(
        Name = "string",
        Status = "NotStarted"|"InProgress"|"Completed"|"Failed",
        FailureReason = "string"
      )
    )
  ),
  ProductId = "string",
  CertifyForMarketplace = TRUE|FALSE
)
}
}
\description{
Returns a description of the specified algorithm that is in your
account.
}
\section{Request syntax}{
\preformatted{svc$describe_algorithm(
  AlgorithmName = "string"
)
}
}

\keyword{internal}
