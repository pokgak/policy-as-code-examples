package main

test_pass {
	cfg := {"resource_changes": [{
		"address": "aws_cloudwatch_log_group.example",
		"type": "aws_cloudwatch_log_group",
		"change": {
			"actions": ["update"],
			"after": {
				"tags_all": {"Environment": "staging"},
				"retention_in_days": 42,
			},
		},
	}]}
	count(deny) == 0 with input as cfg
}

test_fail {
	cfg := {"resource_changes": [{
		"address": "aws_cloudwatch_log_group.example",
		"type": "aws_cloudwatch_log_group",
		"change": {
			"actions": ["update"],
			"after": {
				"tags_all": {"Environment": "staging"},
				"retention_in_days": 0,
			},
		},
	}]}
	count(deny) > 0 with input as cfg
}
