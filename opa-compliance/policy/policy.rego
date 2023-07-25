package main

deny[msg] {
	# assign to a variable to make it easier to read
	c := input.resource_changes[_]

	# only check aws_cloudwatch_log_group resources
	c.type == "aws_cloudwatch_log_group"

	# ...if the resource is being created or updated
	actions_to_check := ["create", "update"]
	action = c.change.actions[_]
	action == actions_to_check[_]

	# or it can be written like this
	# c.change.actions[_] == ["create", "update"][_]

	# ...and the resource is in the staging environment
	c.change.after.tags_all.Environment == "staging"

	# ...and check if retention_in_days is 0
	c.change.after.retention_in_days == 0

	msg := "aws_cloudwatch_log_group.retention_in_days cannot be 0"
}
