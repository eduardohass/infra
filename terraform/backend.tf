terraform {
    backend "s3" {
        profile    = "default"
        bucket = "comphass-infra-terraform-state-backend"
        region = "us-east-1"
        encrypt = "true"
        key = "comphass-infra/terraform.tfstate"
        dynamodb_table = "dynamodb-backend"
    }
}