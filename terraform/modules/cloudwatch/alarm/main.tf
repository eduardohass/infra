resource "aws_cloudwatch_metric_alarm" "alarm" {
  alarm_name          = var.aws_cloudwatch_alarm_alarmname
  comparison_operator = var.aws_cloudwatch_alarm_comparisonoperator
  evaluation_periods  = var.aws_cloudwatch_alarm_evaluationperiods
  metric_name         = var.aws_cloudwatch_alarm_metricname
  namespace           = var.aws_cloudwatch_alarm_namespace
  period              = var.aws_cloudwatch_alarm_period
  statistic           = var.aws_cloudwatch_alarm_statistic
  threshold           = var.aws_cloudwatch_alarm_threshold
  alarm_description   = var.aws_cloudwatch_alarm_alarmdescription
  #   insufficient_data_actions = var.aws_cloudwatch_alarm_dataactions
  treat_missing_data = var.aws_cloudwatch_alarm_treatmissingdata
  alarm_actions      = var.aws_cloudwatch_alarm_alarm_actions

  dimensions = {
    Currency = var.aws_cloudwatch_alarm_currency
  }
}