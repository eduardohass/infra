https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription

Provides a resource for subscribing to SNS topics. Requires that an SNS topic exist for the subscription to attach to. This resource allows you to automatically place messages sent to SNS topics in SQS queues, send them as HTTP(S) POST requests to a given endpoint, send SMS messages, or notify devices / applications. The most likely use case for Terraform users will probably be SQS queues.

NOTE:
If the SNS topic and SQS queue are in different AWS regions, the aws_sns_topic_subscription must use an AWS provider that is in the same region as the SNS topic. If the aws_sns_topic_subscription uses a provider with a different region than the SNS topic, Terraform will fail to create the subscription.

NOTE:
Setup of cross-account subscriptions from SNS topics to SQS queues requires Terraform to have access to BOTH accounts.

NOTE:
If an SNS topic and SQS queue are in different AWS accounts but the same region, the aws_sns_topic_subscription must use the AWS provider for the account with the SQS queue. If aws_sns_topic_subscription uses a Provider with a different account than the SQS queue, Terraform creates the subscription but does not keep state and tries to re-create the subscription at every apply.

NOTE:
If an SNS topic and SQS queue are in different AWS accounts and different AWS regions, the subscription needs to be initiated from the account with the SQS queue but in the region of the SNS topic.

NOTE:
You cannot unsubscribe to a subscription that is pending confirmation. If you use email, email-json, or http/https (without auto-confirmation enabled), until the subscription is confirmed (e.g., outside of Terraform), AWS does not allow Terraform to delete / unsubscribe the subscription. If you destroy an unconfirmed subscription, Terraform will remove the subscription from its state but the subscription will still exist in AWS. However, if you delete an SNS topic, SNS deletes all the subscriptions associated with the topic. Also, you can import a subscription after confirmation and then have the capability to delete it.