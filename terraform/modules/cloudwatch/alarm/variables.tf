variable "aws_cloudwatch_alarm_alarmname" {
  type        = string
  description = "(Required) The descriptive name for the alarm. This name must be unique within the user's AWS account"
}

variable "aws_cloudwatch_alarm_comparisonoperator" {
  type        = string
  description = "(Required) The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold. Additionally, the values LessThanLowerOrGreaterThanUpperThreshold, LessThanLowerThreshold, and GreaterThanUpperThreshold are used only for alarms based on anomaly detection models."
}
variable "aws_cloudwatch_alarm_evaluationperiods" {
  type        = string
  description = "(Required) The number of periods over which data is compared to the specified threshold."
}
variable "aws_cloudwatch_alarm_metricname" {
  type        = string
  description = "(Optional) The name for the alarm's associated metric. See docs for supported metrics."
}
variable "aws_cloudwatch_alarm_namespace" {
  type        = string
  description = "(Optional) The namespace for the alarm's associated metric. See docs for the list of namespaces. See docs for supported metrics."
}
variable "aws_cloudwatch_alarm_period" {
  type        = string
  description = " (Optional) The period in seconds over which the specified statistic is applied."
}
variable "aws_cloudwatch_alarm_statistic" {
  type        = string
  description = "(Optional) The statistic to apply to the alarm's associated metric. Either of the following is supported: SampleCount, Average, Sum, Minimum, Maximum"
}
variable "aws_cloudwatch_alarm_threshold" {
  type        = string
  description = " (Optional) The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models."
}
variable "aws_cloudwatch_alarm_alarmdescription" {
  type        = string
  description = "Description of alarm"
}

# variable "aws_cloudwatch_alarm_dataactions" {
#   type        = list(string)
#   description = "???"
# }

variable "aws_cloudwatch_alarm_treatmissingdata" {
  type        = string
  description = "Optional) Sets how this alarm is to handle missing data points. The following values are supported: missing, ignore, breaching and notBreaching. Defaults to missing."
}

variable "aws_cloudwatch_alarm_currency" {
  type        = string
  description = "Currency type (e.g. USD, CAD, EUR)"
  default     = "USD"
}

variable "aws_cloudwatch_alarm_alarm_actions" {
  description = "(Optional) The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  type        = list(string)
}