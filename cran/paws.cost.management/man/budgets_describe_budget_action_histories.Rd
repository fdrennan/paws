% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/budgets_operations.R
\name{budgets_describe_budget_action_histories}
\alias{budgets_describe_budget_action_histories}
\title{Describes a budget action history detail}
\usage{
budgets_describe_budget_action_histories(AccountId, BudgetName,
  ActionId, TimePeriod, MaxResults, NextToken)
}
\arguments{
\item{AccountId}{[required]}

\item{BudgetName}{[required]}

\item{ActionId}{[required] A system-generated universally unique identifier (UUID) for the action.}

\item{TimePeriod}{}

\item{MaxResults}{}

\item{NextToken}{}
}
\value{
A list with the following syntax:\preformatted{list(
  ActionHistories = list(
    list(
      Timestamp = as.POSIXct(
        "2015-01-01"
      ),
      Status = "STANDBY"|"PENDING"|"EXECUTION_IN_PROGRESS"|"EXECUTION_SUCCESS"|"EXECUTION_FAILURE"|"REVERSE_IN_PROGRESS"|"REVERSE_SUCCESS"|"REVERSE_FAILURE"|"RESET_IN_PROGRESS"|"RESET_FAILURE",
      EventType = "SYSTEM"|"CREATE_ACTION"|"DELETE_ACTION"|"UPDATE_ACTION"|"EXECUTE_ACTION",
      ActionHistoryDetails = list(
        Message = "string",
        Action = list(
          ActionId = "string",
          BudgetName = "string",
          NotificationType = "ACTUAL"|"FORECASTED",
          ActionType = "APPLY_IAM_POLICY"|"APPLY_SCP_POLICY"|"RUN_SSM_DOCUMENTS",
          ActionThreshold = list(
            ActionThresholdValue = 123.0,
            ActionThresholdType = "PERCENTAGE"|"ABSOLUTE_VALUE"
          ),
          Definition = list(
            IamActionDefinition = list(
              PolicyArn = "string",
              Roles = list(
                "string"
              ),
              Groups = list(
                "string"
              ),
              Users = list(
                "string"
              )
            ),
            ScpActionDefinition = list(
              PolicyId = "string",
              TargetIds = list(
                "string"
              )
            ),
            SsmActionDefinition = list(
              ActionSubType = "STOP_EC2_INSTANCES"|"STOP_RDS_INSTANCES",
              Region = "string",
              InstanceIds = list(
                "string"
              )
            )
          ),
          ExecutionRoleArn = "string",
          ApprovalModel = "AUTOMATIC"|"MANUAL",
          Status = "STANDBY"|"PENDING"|"EXECUTION_IN_PROGRESS"|"EXECUTION_SUCCESS"|"EXECUTION_FAILURE"|"REVERSE_IN_PROGRESS"|"REVERSE_SUCCESS"|"REVERSE_FAILURE"|"RESET_IN_PROGRESS"|"RESET_FAILURE",
          Subscribers = list(
            list(
              SubscriptionType = "SNS"|"EMAIL",
              Address = "string"
            )
          )
        )
      )
    )
  ),
  NextToken = "string"
)
}
}
\description{
Describes a budget action history detail.
}
\section{Request syntax}{
\preformatted{svc$describe_budget_action_histories(
  AccountId = "string",
  BudgetName = "string",
  ActionId = "string",
  TimePeriod = list(
    Start = as.POSIXct(
      "2015-01-01"
    ),
    End = as.POSIXct(
      "2015-01-01"
    )
  ),
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
