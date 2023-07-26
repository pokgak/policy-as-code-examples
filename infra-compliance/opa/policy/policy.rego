package main

import future.keywords.if
import future.keywords.in

aws_cloudwatch_log_group := groups if {
	rc := input.resource_changes[_]

	# filter for aws_cloudwatch_log_group resources
	rc.type == "aws_cloudwatch_log_group"

	# filter for resources in staging environment
	rc.change.after.tags_all.Environment == "staging"

	# filter for resources with create or update actions only
	rc.change.actions[_] == ["create", "update"][_]

	groups := input.resource_changes
}

deny[msg] {
	# ...and check if retention_in_days is 0
	aws_cloudwatch_log_group[_].change.after.retention_in_days == 0

	msg := "aws_cloudwatch_log_group.retention_in_days cannot be 0"
}
