terraform {
  cloud {
    organization = "pokgak-org"

    workspaces {
      name = "test"
    }
  }  
}

provider "aws" {
  region = "us-east-1"
  # not the best practice to use shared credentials file like this
  shared_credentials_files = ["./credentials"]
}

resource "aws_cloudwatch_log_group" "example" {
    name              = "/aiman/sentinel/demo"
    retention_in_days = 0

    tags = {
        Environment = "staging"
    }
}