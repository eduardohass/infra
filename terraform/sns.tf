module "billing-alarm-notification" {
  source             = "./modules/sns/topic"
  aws_sns_topic_name = "billing-alarm-notification"
}

module "billing-alarm-email-target" {
  source                                  = "./modules/sns/subscription"
  aws_sns_topic_subscription_endpoint     = var.sns_topic_subscription_email
  aws_sns_topic_subscription_protocol     = "email"
  aws_sns_topic_subscription_topic_arn = module.billing-alarm-notification.billing_sns_topic_arn
}