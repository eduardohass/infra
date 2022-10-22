terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

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