mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-v2-bad.sentinel"
  }
}

# uncomment me to expect test to fail
test {
  rules = {
    retention_in_days_not_zero = false
    main                       = false
  }
}
