resource "aws_sns_topic_subscription" "sns_topic_subscription" {
  endpoint = var.aws_sns_topic_subscription_endpoint
  protocol = var.aws_sns_topic_subscription_protocol
  # subscription_role_arn = var.aws_sns_topic_subscription_subscription_role_arn
  topic_arn = var.aws_sns_topic_subscription_topic_arn
}