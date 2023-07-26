# HOWTO

run `sentinel test`


## ERRORS

```
ERROR - test/demo/good.hcl
    Error: demo.sentinel:10:9: unsupported type for looping: undefined

    trace:
      demo.sentinel:15:1 - Rule "main"
        Value:
          (error in evaluating rule)

      demo.sentinel:9:1 - Rule "retention_in_days_not_zero"
        Value:
          (error in evaluating rule)
```