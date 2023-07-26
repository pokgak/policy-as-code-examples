# Scenario

Your company in the cost-optimization journey. CloudWatch Log Group is one of the highest in your invoice. Found out lots of CloudWatch Log Group resources that is set to keep the logs forever. 

Detect current and future changes.

## Goal

Check that no `aws_cloudwatch_log_group` is configured with `retention_in_days = 0` in the `staging` environment.