module "budget_lab" {
  source                                                     = "./modules/budget"
  aws_budgets_budget_name                                    = "lab_cost_budget"
  aws_budgets_budget_budget_type                             = "COST"
  aws_budgets_budget_limit_amount                            = "30"
  aws_budgets_budget_limit_unit                              = "USD"
  aws_budgets_budget_time_period_end                         = "2023-10-20_00:00"
  aws_budgets_budget_time_period_start                       = "2022-10-19_00:00"
  aws_budgets_budget_time_unit                               = "MONTHLY"
  aws_budgets_budget_notification_comparison_operator        = "GREATER_THAN"
  aws_budgets_budget_notification_threshold                  = 50
  aws_budgets_budget_notification_threshold_type             = "PERCENTAGE"
  aws_budgets_budget_notification_notification_type          = "FORECASTED"
  aws_budgets_budget_notification_subscriber_email_addresses = ["eduardohass@outook.com"]
}

# module "metric_alarm_01" {
#   source                                  = "./modules/cloudwatch/alarm"
#   aws_cloudwatch_alarm_alarmname          = "terraform-test-cpu"
#   aws_cloudwatch_alarm_comparisonoperator = "GreaterThanOrEqualToThreshold"
#   aws_cloudwatch_alarm_evaluationperiods  = "2"
#   aws_cloudwatch_alarm_metricname         = "CPUUtilization"
#   aws_cloudwatch_alarm_namespace          = "AWS/EC2"
#   aws_cloudwatch_alarm_period             = "120"
#   aws_cloudwatch_alarm_statistic          = "Average"
#   aws_cloudwatch_alarm_threshold          = "70"
#   aws_cloudwatch_alarm_alarmdescription   = "This metric monitors ec2 cpu utilization"
#   # aws_cloudwatch_alarm_dataactions        = []
#   aws_cloudwatch_alarm_treatmissingdata = "breaching"
# }

module "billing" {
  source                                  = "./modules/cloudwatch/alarm"
  aws_cloudwatch_alarm_alarmname          = "billing alarm"
  aws_cloudwatch_alarm_alarmdescription   = "It triggers when the rhresould is >= 20 USD"
  aws_cloudwatch_alarm_comparisonoperator = "GreaterThanOrEqualToThreshold"
  aws_cloudwatch_alarm_evaluationperiods  = "1"
  aws_cloudwatch_alarm_metricname         = "EstimatedCharges"
  aws_cloudwatch_alarm_namespace          = "AWS/Billing"
  aws_cloudwatch_alarm_period             = "21600" # 6 hours
  aws_cloudwatch_alarm_statistic          = "Maximum"
  aws_cloudwatch_alarm_threshold          = "20"
  # aws_cloudwatch_alarm_dataactions        = []
  aws_cloudwatch_alarm_treatmissingdata = "breaching"
  aws_cloudwatch_alarm_currency         = "USD"
  aws_cloudwatch_alarm_alarm_actions    = [module.billing-alarm-notification.billing_sns_topic_arn]
}