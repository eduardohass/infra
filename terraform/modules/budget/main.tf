resource "aws_budgets_budget" "budget" {
  name              = var.aws_budgets_budget_name
  budget_type       = var.aws_budgets_budget_budget_type
  limit_amount      = var.aws_budgets_budget_limit_amount
  limit_unit        = var.aws_budgets_budget_limit_unit
  time_period_end   = var.aws_budgets_budget_time_period_end
  time_period_start = var.aws_budgets_budget_time_period_start
  time_unit         = var.aws_budgets_budget_time_unit

  notification {
    comparison_operator        = var.aws_budgets_budget_notification_comparison_operator
    threshold                  = var.aws_budgets_budget_notification_threshold
    threshold_type             = var.aws_budgets_budget_notification_threshold_type
    notification_type          = var.aws_budgets_budget_notification_notification_type
    subscriber_email_addresses = var.aws_budgets_budget_notification_subscriber_email_addresses
  }
}