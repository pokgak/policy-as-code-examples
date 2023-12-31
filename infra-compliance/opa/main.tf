provider "aws" {
  region = "us-east-1"
}

resource "aws_cloudwatch_log_group" "example" {
    name              = "/aiman/opa/demo"
    retention_in_days = 0

    tags = {
        Environment = "staging"
    }
}