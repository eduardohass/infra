resource "aws_sns_topic" "sns_topic" {
  name = var.aws_sns_topic_name
  # display_name                                  = var.aws_sns_topic_display_name
  # name_prefix                                   = var.aws_sns_topic_name_prefix
  # kms_master_key_id                             = var.aws_sns_topic_kms_master_key_id
  # fifo_topic                                    = var.aws_sns_topic_fifo_topic
  # contentcontent_based_deduplication            = var.aws_sns_topic_content_based_deduplication
  # policy                                        = var.aws_sns_topic_policy
  # delivery_policy                               = var.aws_sns_topic_delivery_policy
  # application_success_feedback_role_arn         = var.aws_sns_topic_application_success_feedback_role_arn
  # application_success_feedback_sample_rate      = var.aws_sns_topic_application_success_feedback_sample_rate
  # application_failure_feedback_role_arn         = var.aws_sns_topic_application_failure_feedback_role_arn
  # http_success_feedback_role_arn                = var.aws_sns_topic_application_success_feedback_role_arn
  # http_success_feedback_sample_rate             = var.aws_sns_topic_http_success_feedback_sample_rate
  # http_failure_feedback_role_arn                = var.aws_sns_topic_http_failure_feedback_role_arn
  # lambda_success_feedback_role_arn              = var.aws_sns_topic_lambda_success_feedback_role_arn
  # lambda_success_feedback_sample_rate           = var.aws_sns_topic_lambda_success_feedback_sample_rate
  # lambda_failure_feedback_role_arn              = var.aws_sns_topic_lambda_failure_feedback_role_arn
  # sqs_success_feedback_role_arn                 = var.aws_sns_topic_sqs_success_feedback_role_arn
  # aws_sns_sqs_success_feedback_sample_rate      = var.aws_sns_topic_aws_sns_sqs_success_feedback_sample_rate
  # aws_sns_sqs_failure_feedback_role_arn         = var.aws_sns_topic_aws_sns_sqs_failure_feedback_role_arn
  # aws_sns_firehose_success_feedback_role_arn    = var.aws_sns_topic_aws_sns_firehose_success_feedback_role_arn
  # aws_sns_firehose_success_feedback_sample_rate = var.aws_sns_topic_aws_sns_firehose_success_feedback_sample_rate
  # aws_sns_firehose_failure_feedback_role_arn    = var.aws_sns_topic_aws_sns_firehose_failure_feedback_role_arn
  # aws_sns_tags                                  = var.aws_sns_topic_aws_sns_tags
}