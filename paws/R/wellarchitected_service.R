# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config
NULL

#' AWS Well-Architected Tool
#'
#' @description
#' This is the *AWS Well-Architected Tool API Reference*.
#' 
#' The AWS Well-Architected Tool API provides programmatic access to the
#' [AWS Well-Architected
#' Tool](https://aws.amazon.com/well-architected-tool/) in the [AWS
#' Management
#' Console](https://console.aws.amazon.com/wellarchitected/home).
#' 
#' **Managing workloads:**
#' 
#' -   [`create_workload`][wellarchitected_create_workload]: Define a new
#'     workload.
#' 
#' -   [`list_workloads`][wellarchitected_list_workloads]: List workloads.
#' 
#' -   [`get_workload`][wellarchitected_get_workload]: Get the properties
#'     of a workload.
#' 
#' -   [`update_workload`][wellarchitected_update_workload]: Update the
#'     properties of a workload.
#' 
#' -   [`delete_workload`][wellarchitected_delete_workload]: Delete a
#'     workload.
#' 
#' **Managing milestones:**
#' 
#' -   [`create_milestone`][wellarchitected_create_milestone]: Create a
#'     milestone.
#' 
#' -   [`list_milestones`][wellarchitected_list_milestones]: List
#'     milestones.
#' 
#' -   [`get_milestone`][wellarchitected_get_milestone]: Get the properties
#'     of a milestone.
#' 
#' **Managing lenses:**
#' 
#' -   [`list_lenses`][wellarchitected_list_lenses]: List the available
#'     lenses.
#' 
#' -   [`associate_lenses`][wellarchitected_associate_lenses]: Add one or
#'     more lenses to a workload.
#' 
#' -   [`disassociate_lenses`][wellarchitected_disassociate_lenses]: Remove
#'     one or more lenses from a workload.
#' 
#' -   [`list_notifications`][wellarchitected_list_notifications]: List
#'     lens notifications for a workload.
#' 
#' -   [`get_lens_version_difference`][wellarchitected_get_lens_version_difference]:
#'     Get the differences between the version of a lens used in a workload
#'     and the latest version.
#' 
#' -   [`upgrade_lens_review`][wellarchitected_upgrade_lens_review]:
#'     Upgrade a workload to use the latest version of a lens.
#' 
#' **Managing reviews:**
#' 
#' -   [`list_lens_reviews`][wellarchitected_list_lens_reviews]: List
#'     reviews associated with a workload.
#' 
#' -   [`get_lens_review`][wellarchitected_get_lens_review]: Get pillar and
#'     risk data associated with a workload review.
#' 
#' -   [`get_lens_review_report`][wellarchitected_get_lens_review_report]:
#'     Get the report associated with a workload review.
#' 
#' -   [`update_lens_review`][wellarchitected_update_lens_review]: Update
#'     the notes associated with a workload review.
#' 
#' -   [`list_answers`][wellarchitected_list_answers]: List the questions
#'     and answers in a workload review.
#' 
#' -   [`update_answer`][wellarchitected_update_answer]: Update the answer
#'     to a specific question in a workload review.
#' 
#' -   [`list_lens_review_improvements`][wellarchitected_list_lens_review_improvements]:
#'     List the improvement plan associated with a workload review.
#' 
#' **Managing workload shares:**
#' 
#' -   [`list_workload_shares`][wellarchitected_list_workload_shares]: List
#'     the workload shares associated with a workload.
#' 
#' -   [`create_workload_share`][wellarchitected_create_workload_share]:
#'     Create a workload share.
#' 
#' -   [`update_workload_share`][wellarchitected_update_workload_share]:
#'     Update a workload share.
#' 
#' -   [`delete_workload_share`][wellarchitected_delete_workload_share]:
#'     Delete a workload share.
#' 
#' **Managing workload share invitations:**
#' 
#' -   [`list_share_invitations`][wellarchitected_list_share_invitations]:
#'     List workload share invitations.
#' 
#' -   [`update_share_invitation`][wellarchitected_update_share_invitation]:
#'     Update a workload share invitation.
#' 
#' For information about the AWS Well-Architected Tool, see the [AWS
#' Well-Architected Tool User
#' Guide](https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#'
#' @section Service syntax:
#' ```
#' svc <- wellarchitected(
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
#' svc <- wellarchitected()
#' svc$associate_lenses(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=wellarchitected_associate_lenses]{associate_lenses} \tab Associate a lens to a workload\cr
#'  \link[=wellarchitected_create_milestone]{create_milestone} \tab Create a milestone for an existing workload\cr
#'  \link[=wellarchitected_create_workload]{create_workload} \tab Create a new workload\cr
#'  \link[=wellarchitected_create_workload_share]{create_workload_share} \tab Create a workload share\cr
#'  \link[=wellarchitected_delete_workload]{delete_workload} \tab Delete an existing workload\cr
#'  \link[=wellarchitected_delete_workload_share]{delete_workload_share} \tab Delete a workload share\cr
#'  \link[=wellarchitected_disassociate_lenses]{disassociate_lenses} \tab Disassociate a lens from a workload\cr
#'  \link[=wellarchitected_get_answer]{get_answer} \tab Get lens review\cr
#'  \link[=wellarchitected_get_lens_review]{get_lens_review} \tab Get lens review\cr
#'  \link[=wellarchitected_get_lens_review_report]{get_lens_review_report} \tab Get lens review report\cr
#'  \link[=wellarchitected_get_lens_version_difference]{get_lens_version_difference} \tab Get lens version differences\cr
#'  \link[=wellarchitected_get_milestone]{get_milestone} \tab Get a milestone for an existing workload\cr
#'  \link[=wellarchitected_get_workload]{get_workload} \tab Get an existing workload\cr
#'  \link[=wellarchitected_list_answers]{list_answers} \tab List of answers\cr
#'  \link[=wellarchitected_list_lenses]{list_lenses} \tab List the available lenses\cr
#'  \link[=wellarchitected_list_lens_review_improvements]{list_lens_review_improvements} \tab List lens review improvements\cr
#'  \link[=wellarchitected_list_lens_reviews]{list_lens_reviews} \tab List lens reviews\cr
#'  \link[=wellarchitected_list_milestones]{list_milestones} \tab List all milestones for an existing workload\cr
#'  \link[=wellarchitected_list_notifications]{list_notifications} \tab List lens notifications\cr
#'  \link[=wellarchitected_list_share_invitations]{list_share_invitations} \tab List the workload invitations\cr
#'  \link[=wellarchitected_list_workloads]{list_workloads} \tab List workloads\cr
#'  \link[=wellarchitected_list_workload_shares]{list_workload_shares} \tab List the workload shares associated with the workload\cr
#'  \link[=wellarchitected_update_answer]{update_answer} \tab Update the answer\cr
#'  \link[=wellarchitected_update_lens_review]{update_lens_review} \tab Update lens review\cr
#'  \link[=wellarchitected_update_share_invitation]{update_share_invitation} \tab Update a workload invitation\cr
#'  \link[=wellarchitected_update_workload]{update_workload} \tab Update an existing workload\cr
#'  \link[=wellarchitected_update_workload_share]{update_workload_share} \tab Update a workload share\cr
#'  \link[=wellarchitected_upgrade_lens_review]{upgrade_lens_review} \tab Upgrade lens review
#' }
#'
#' @rdname wellarchitected
#' @export
wellarchitected <- function(config = list()) {
  svc <- .wellarchitected$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.wellarchitected <- list()

.wellarchitected$operations <- list()

.wellarchitected$metadata <- list(
  service_name = "wellarchitected",
  endpoints = list("*" = list(endpoint = "wellarchitected.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "wellarchitected.{region}.amazonaws.com.cn", global = FALSE), "us-iso-*" = list(endpoint = "wellarchitected.{region}.c2s.ic.gov", global = FALSE), "us-isob-*" = list(endpoint = "wellarchitected.{region}.sc2s.sgov.gov", global = FALSE)),
  service_id = "WellArchitected",
  api_version = "2020-03-31",
  signing_name = "wellarchitected",
  json_version = "1.1",
  target_prefix = ""
)

.wellarchitected$service <- function(config = list()) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.wellarchitected$metadata, handlers, config)
}
