# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_operation new_request send_request
#' @include apigatewaymanagementapi_service.R
NULL

#' Sends the provided data to the specified connection
#'
#' Sends the provided data to the specified connection.
#'
#' @usage
#' apigatewaymanagementapi_post_to_connection(Data, ConnectionId)
#'
#' @param Data &#91;required&#93; The data to be sent to the client specified by its connection id.
#' @param ConnectionId &#91;required&#93; The identifier of the connection that a specific client is using.
#'
#' @section Request syntax:
#' ```
#' apigatewaymanagementapi$post_to_connection(
#'   Data = raw,
#'   ConnectionId = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname apigatewaymanagementapi_post_to_connection
apigatewaymanagementapi_post_to_connection <- function(Data, ConnectionId) {
  op <- new_operation(
    name = "PostToConnection",
    http_method = "POST",
    http_path = "/@connections/{connectionId}",
    paginator = list()
  )
  input <- .apigatewaymanagementapi$post_to_connection_input(Data = Data, ConnectionId = ConnectionId)
  output <- .apigatewaymanagementapi$post_to_connection_output()
  svc <- .apigatewaymanagementapi$service()
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.apigatewaymanagementapi$operations$post_to_connection <- apigatewaymanagementapi_post_to_connection