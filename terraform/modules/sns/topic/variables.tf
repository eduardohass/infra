variable "aws_sns_topic_name" {
  description = " (Optional) The name of the topic."
  type        = string
}
# variable "aws_sns_topic_kms_master_key_id" {
#   description = "(Optional) The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see Key Terms"
#   type        = string
# }
# variable "aws_sns_topic_fifo_topic" {
#   description = "(Optional) Boolean indicating whether or not to create a FIFO (first-in-first-out) topic (default is false)."
#   type        = string
# }
# variable "aws_sns_topic_name_prefix" {
#   description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name"
#   type        = string
# }
# variable "aws_sns_topic_display_name" {
#   description = "(Optional) The display name for the topic"
#   type        = string
# }
# variable "aws_sns_topic_policy" {
#   description = "(Optional) The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
#   type        = string
# }
# variable "aws_sns_topic_delivery_policy" {
#   description = "(Optional) The SNS delivery policy. More on AWS documentation"
#   type        = string
# }
# variable "aws_sns_topic_application_success_feedback_role_arn" {
#   description = "(Optional) The IAM role permitted to receive success feedback for this topic"
#   type        = string
# }
# variable "aws_sns_topic_content_based_deduplication" {
#   description = "(Optional) Enables content-based deduplication for FIFO topics. For more information, see the related documentation"
#   type        = string
# }
# variable "aws_sns_topic_application_success_feedback_sample_rate" {
#   description = "(Optional) Percentage of success to sample"
#   type        = string
# }
# variable "aws_sns_topic_application_failure_feedback_role_arn" {
#   description = "(Optional) IAM role for failure feedback"
#   type        = string
# }
# variable "aws_sns_topic_http_success_feedback_role_arn" {
#   description = "(Optional) The IAM role permitted to receive success feedback for this topic"
#   type        = string
# }
# variable "aws_sns_topic_http_success_feedback_sample_rate" {
#   description = "(Optional) Percentage of success to sample"
#   type        = string
# }
# variable "aws_sns_topic_http_failure_feedback_role_arn" {
#   description = "(Optional) IAM role for failure feedback"
#   type        = string
# }
# variable "aws_sns_topic_lambda_success_feedback_role_arn" {
#   description = "(Optional) The IAM role permitted to receive success feedback for this topic"
#   type        = string
# }
# variable "aws_sns_topic_lambda_success_feedback_sample_rate" {
#   description = "(Optional) Percentage of success to sample"
#   type        = string
# }
# variable "aws_sns_topic_lambda_failure_feedback_role_arn" {
#   description = "(Optional) IAM role for failure feedback"
#   type        = string
# }
# variable "aws_sns_topic_sqs_success_feedback_role_arn" {
#   description = "(Optional) The IAM role permitted to receive success feedback for this topic"
#   type        = string
# }
# variable "aws_sns_topic_sqs_success_feedback_sample_rate" {
#   description = "(Optional) Percentage of success to sample"
#   type        = string
# }
# variable "aws_sns_topic_sqs_failure_feedback_role_arn" {
#   description = "(Optional) IAM role for failure feedback"
#   type        = string
# }
# variable "aws_sns_topic_firehose_success_feedback_role_arn" {
#   description = "(Optional) The IAM role permitted to receive success feedback for this topic"
#   type        = string
# }
# variable "aws_sns_topic_firehose_success_feedback_sample_rate" {
#   description = "(Optional) Percentage of success to sample"
#   type        = string
# }
# variable "aws_sns_topic_firehose_failure_feedback_role_arn" {
#   description = "(Optional) IAM role for failure feedback"
#   type        = string
# }
# variable "aws_sns_topic_tags" {
#   description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
#   type        = string
# }
