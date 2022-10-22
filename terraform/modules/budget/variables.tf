variable "aws_budgets_budget_name" {
  type        = string
  description = "Name of budget alert"
}

variable "aws_budgets_budget_budget_type" {
  type        = string
  description = "Specifies whether this budget tracks costs, usage, RI utilization, RI coverage, Savings Plans utilization, or Savings Plans coverage."
}

variable "aws_budgets_budget_limit_amount" {
  type        = string
  description = "(Required) The amount of cost or usage being measured for a budget"
}

variable "aws_budgets_budget_limit_unit" {
  type        = string
  description = "(Required) The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See Spend documentation"
}

variable "aws_budgets_budget_time_period_end" {
  type        = string
  description = "(Optional) The end of the time period covered by the budget. There are no restrictions on the end date. Format: 2017-01-01_12:00"
}

variable "aws_budgets_budget_time_period_start" {
  type        = string
  description = "(Optional) The start of the time period covered by the budget. If you don't specify a start date, AWS defaults to the start of your chosen time period. The start date must come before the end date. Format: 2017-01-01_12:00"
}

variable "aws_budgets_budget_time_unit" {
  type        = string
  description = "(Required) The length of time until a budget resets the actual and forecasted spend. Valid values: MONTHLY, QUARTERLY, ANNUALLY, and DAILY"
}

variable "aws_budgets_budget_notification_comparison_operator" {
  type        = string
  description = "(Required) Comparison operator to use to evaluate the condition. Can be LESS_THAN, EQUAL_TO or GREATER_THAN"
}

variable "aws_budgets_budget_notification_threshold" {
  type        = string
  description = "(Required) Threshold when the notification should be sent"
}

variable "aws_budgets_budget_notification_threshold_type" {
  type        = string
  description = "(Required) What kind of threshold is defined. Can be PERCENTAGE OR ABSOLUTE_VALUE"
}

variable "aws_budgets_budget_notification_notification_type" {
  type        = string
  description = "(Required) What kind of budget value to notify on. Can be ACTUAL or FORECASTED"
}

variable "aws_budgets_budget_notification_subscriber_email_addresses" {
  type        = list(string)
  description = "(Optional) E-Mail addresses to notify. Either this or subscriber_sns_topic_arns is required."
}