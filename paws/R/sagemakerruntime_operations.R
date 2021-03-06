# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include sagemakerruntime_service.R
NULL

#' After you deploy a model into production using Amazon SageMaker hosting
#' services, your client applications use this API to get inferences from
#' the model hosted at the specified endpoint
#'
#' @description
#' After you deploy a model into production using Amazon SageMaker hosting
#' services, your client applications use this API to get inferences from
#' the model hosted at the specified endpoint.
#' 
#' For an overview of Amazon SageMaker, see [How It
#' Works](https://docs.aws.amazon.com/sagemaker/latest/dg/).
#' 
#' Amazon SageMaker strips all POST headers except those supported by the
#' API. Amazon SageMaker might add additional headers. You should not rely
#' on the behavior of headers outside those enumerated in the request
#' syntax.
#' 
#' Calls to [`invoke_endpoint`][sagemakerruntime_invoke_endpoint] are
#' authenticated by using AWS Signature Version 4. For information, see
#' [Authenticating Requests (AWS Signature Version
#' 4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
#' in the *Amazon S3 API Reference*.
#' 
#' A customer's model containers must respond to requests within 60
#' seconds. The model itself can have a maximum processing time of 60
#' seconds before responding to invocations. If your model is going to take
#' 50-60 seconds of processing time, the SDK socket timeout should be set
#' to be 70 seconds.
#' 
#' Endpoints are scoped to an individual account, and are not public. The
#' URL does not contain the account ID, but Amazon SageMaker determines the
#' account ID from the authentication token that is supplied by the caller.
#'
#' @usage
#' sagemakerruntime_invoke_endpoint(EndpointName, Body, ContentType,
#'   Accept, CustomAttributes, TargetModel, TargetVariant, InferenceId)
#'
#' @param EndpointName &#91;required&#93; The name of the endpoint that you specified when you created the
#' endpoint using the
#' [CreateEndpoint](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html)
#' API.
#' @param Body &#91;required&#93; Provides input data, in the format specified in the `ContentType`
#' request header. Amazon SageMaker passes all of the data in the body to
#' the model.
#' 
#' For information about the format of the request body, see [Common Data
#' Formats-Inference](https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html).
#' @param ContentType The MIME type of the input data in the request body.
#' @param Accept The desired MIME type of the inference in the response.
#' @param CustomAttributes Provides additional information about a request for an inference
#' submitted to a model hosted at an Amazon SageMaker endpoint. The
#' information is an opaque value that is forwarded verbatim. You could use
#' this value, for example, to provide an ID that you can use to track a
#' request or to provide other metadata that a service endpoint was
#' programmed to process. The value must consist of no more than 1024
#' visible US-ASCII characters as specified in [Section 3.3.6. Field Value
#' Components](https://tools.ietf.org/html/rfc7230#section-3.2.6) of the
#' Hypertext Transfer Protocol (HTTP/1.1).
#' 
#' The code in your model is responsible for setting or updating any custom
#' attributes in the response. If your code does not set this value in the
#' response, an empty value is returned. For example, if a custom attribute
#' represents the trace ID, your model can prepend the custom attribute
#' with `Trace ID:` in your post-processing function.
#' 
#' This feature is currently supported in the AWS SDKs but not in the
#' Amazon SageMaker Python SDK.
#' @param TargetModel The model to request for inference when invoking a multi-model endpoint.
#' @param TargetVariant Specify the production variant to send the inference request to when
#' invoking an endpoint that is running two or more variants. Note that
#' this parameter overrides the default behavior for the endpoint, which is
#' to distribute the invocation traffic based on the variant weights.
#' 
#' For information about how to use variant targeting to perform a/b
#' testing, see [Test models in
#' production](https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html)
#' @param InferenceId If you provide a value, it is added to the captured data when you enable
#' data capture on the endpoint. For information about data capture, see
#' [Capture
#' Data](https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html).
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Body = raw,
#'   ContentType = "string",
#'   InvokedProductionVariant = "string",
#'   CustomAttributes = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$invoke_endpoint(
#'   EndpointName = "string",
#'   Body = raw,
#'   ContentType = "string",
#'   Accept = "string",
#'   CustomAttributes = "string",
#'   TargetModel = "string",
#'   TargetVariant = "string",
#'   InferenceId = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname sagemakerruntime_invoke_endpoint
sagemakerruntime_invoke_endpoint <- function(EndpointName, Body, ContentType = NULL, Accept = NULL, CustomAttributes = NULL, TargetModel = NULL, TargetVariant = NULL, InferenceId = NULL) {
  op <- new_operation(
    name = "InvokeEndpoint",
    http_method = "POST",
    http_path = "/endpoints/{EndpointName}/invocations",
    paginator = list()
  )
  input <- .sagemakerruntime$invoke_endpoint_input(EndpointName = EndpointName, Body = Body, ContentType = ContentType, Accept = Accept, CustomAttributes = CustomAttributes, TargetModel = TargetModel, TargetVariant = TargetVariant, InferenceId = InferenceId)
  output <- .sagemakerruntime$invoke_endpoint_output()
  config <- get_config()
  svc <- .sagemakerruntime$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.sagemakerruntime$operations$invoke_endpoint <- sagemakerruntime_invoke_endpoint
