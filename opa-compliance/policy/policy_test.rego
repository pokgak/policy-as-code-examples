package main

test_deny_staging_update {
	cfg := {"resource_changes": [{
		"address": "aws_cloudwatch_log_group.test",
		"type": "aws_cloudwatch_log_group",
		"name": "test",
		"change": {
			"actions": ["update"],
			"before": {},
			"after": {
				"tags_all": {"Environment": "staging"},
				"retention_in_days": 0,
			},
		},
	}]}
	count(deny) > 0 with input as cfg
}
