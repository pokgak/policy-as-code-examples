mock "tfplan/v2" {
  data = {
    resource_changes = {
      "aws_cloudwatch_log_group.example" : {
        "type" : "aws_cloudwatch_log_group",
        "change" : {
          "actions" = ["create"],
          "after" : {
            "retention_in_days" = 42,
            "tags" : {
              "Environment" = "staging"
            }
          }
        }
      }
    }
  }
}