variable "aws_sns_topic_subscription_endpoint" {
  description = "(Required) Endpoint to send data to. The contents vary with the protocol. See details below."
  type        = string
}
variable "aws_sns_topic_subscription_protocol" {
  description = "(Required) Protocol to use. Valid values are: sqs, sms, lambda, firehose, and application. Protocols email, email-json, http and https are also valid but partially supported. See details below."
  type        = string
}
# variable "aws_sns_topic_subscription_subscription_role_arn" {
#   description = "(Required if protocol is firehose) ARN of the IAM role to publish to Kinesis Data Firehose delivery stream. Refer to SNS docs."
#   type        = string
# }
variable "aws_sns_topic_subscription_topic_arn" {
  description = "(Required) ARN of the SNS topic to subscribe to."
  type        = string
}