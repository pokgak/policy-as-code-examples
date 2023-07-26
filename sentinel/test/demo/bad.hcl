mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-v2-bad.sentinel"
  }
}

test {
  rules = {
    retention_in_days_not_zero = false
    main                       = false
  }
}
