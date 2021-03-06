# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config
NULL

#' AWS CodeStar connections
#'
#' @description
#' AWS CodeStar Connections
#' 
#' This AWS CodeStar Connections API Reference provides descriptions and
#' usage examples of the operations and data types for the AWS CodeStar
#' Connections API. You can use the connections API to work with
#' connections and installations.
#' 
#' *Connections* are configurations that you use to connect AWS resources
#' to external code repositories. Each connection is a resource that can be
#' given to services such as CodePipeline to connect to a third-party
#' repository such as Bitbucket. For example, you can add the connection in
#' CodePipeline so that it triggers your pipeline when a code change is
#' made to your third-party code repository. Each connection is named and
#' associated with a unique ARN that is used to reference the connection.
#' 
#' When you create a connection, the console initiates a third-party
#' connection handshake. *Installations* are the apps that are used to
#' conduct this handshake. For example, the installation for the Bitbucket
#' provider type is the Bitbucket app. When you create a connection, you
#' can choose an existing installation or create one.
#' 
#' When you want to create a connection to an installed provider type such
#' as GitHub Enterprise Server, you create a *host* for your connections.
#' 
#' You can work with connections by calling:
#' 
#' -   [`create_connection`][codestarconnections_create_connection], which
#'     creates a uniquely named connection that can be referenced by
#'     services such as CodePipeline.
#' 
#' -   [`delete_connection`][codestarconnections_delete_connection], which
#'     deletes the specified connection.
#' 
#' -   [`get_connection`][codestarconnections_get_connection], which
#'     returns information about the connection, including the connection
#'     status.
#' 
#' -   [`list_connections`][codestarconnections_list_connections], which
#'     lists the connections associated with your account.
#' 
#' You can work with hosts by calling:
#' 
#' -   [`create_host`][codestarconnections_create_host], which creates a
#'     host that represents the infrastructure where your provider is
#'     installed.
#' 
#' -   [`delete_host`][codestarconnections_delete_host], which deletes the
#'     specified host.
#' 
#' -   [`get_host`][codestarconnections_get_host], which returns
#'     information about the host, including the setup status.
#' 
#' -   [`list_hosts`][codestarconnections_list_hosts], which lists the
#'     hosts associated with your account.
#' 
#' You can work with tags in AWS CodeStar Connections by calling the
#' following:
#' 
#' -   [`list_tags_for_resource`][codestarconnections_list_tags_for_resource],
#'     which gets information about AWS tags for a specified Amazon
#'     Resource Name (ARN) in AWS CodeStar Connections.
#' 
#' -   [`tag_resource`][codestarconnections_tag_resource], which adds or
#'     updates tags for a resource in AWS CodeStar Connections.
#' 
#' -   [`untag_resource`][codestarconnections_untag_resource], which
#'     removes tags for a resource in AWS CodeStar Connections.
#' 
#' For information about how to use AWS CodeStar Connections, see the
#' [Developer Tools User
#' Guide](https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#'
#' @section Service syntax:
#' ```
#' svc <- codestarconnections(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string"
#'     ),
#'     endpoint = "string",
#'     region = "string"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- codestarconnections()
#' svc$create_connection(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=codestarconnections_create_connection]{create_connection} \tab Creates a connection that can then be given to other AWS services like CodePipeline so that it can access third-party code repositories\cr
#'  \link[=codestarconnections_create_host]{create_host} \tab Creates a resource that represents the infrastructure where a third-party provider is installed\cr
#'  \link[=codestarconnections_delete_connection]{delete_connection} \tab The connection to be deleted\cr
#'  \link[=codestarconnections_delete_host]{delete_host} \tab The host to be deleted\cr
#'  \link[=codestarconnections_get_connection]{get_connection} \tab Returns the connection ARN and details such as status, owner, and provider type\cr
#'  \link[=codestarconnections_get_host]{get_host} \tab Returns the host ARN and details such as status, provider type, endpoint, and, if applicable, the VPC configuration\cr
#'  \link[=codestarconnections_list_connections]{list_connections} \tab Lists the connections associated with your account\cr
#'  \link[=codestarconnections_list_hosts]{list_hosts} \tab Lists the hosts associated with your account\cr
#'  \link[=codestarconnections_list_tags_for_resource]{list_tags_for_resource} \tab Gets the set of key-value pairs (metadata) that are used to manage the resource\cr
#'  \link[=codestarconnections_tag_resource]{tag_resource} \tab Adds to or modifies the tags of the given resource\cr
#'  \link[=codestarconnections_untag_resource]{untag_resource} \tab Removes tags from an AWS resource\cr
#'  \link[=codestarconnections_update_host]{update_host} \tab Updates a specified host with the provided configurations
#' }
#'
#' @rdname codestarconnections
#' @export
codestarconnections <- function(config = list()) {
  svc <- .codestarconnections$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.codestarconnections <- list()

.codestarconnections$operations <- list()

.codestarconnections$metadata <- list(
  service_name = "codestarconnections",
  endpoints = list("*" = list(endpoint = "codestarconnections.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "codestarconnections.{region}.amazonaws.com.cn", global = FALSE), "us-iso-*" = list(endpoint = "codestarconnections.{region}.c2s.ic.gov", global = FALSE), "us-isob-*" = list(endpoint = "codestarconnections.{region}.sc2s.sgov.gov", global = FALSE)),
  service_id = "CodeStar connections",
  api_version = "2019-12-01",
  signing_name = "codestar-connections",
  json_version = "1.0",
  target_prefix = "com.amazonaws.codestar.connections.CodeStar_connections_20191201"
)

.codestarconnections$service <- function(config = list()) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.codestarconnections$metadata, handlers, config)
}
