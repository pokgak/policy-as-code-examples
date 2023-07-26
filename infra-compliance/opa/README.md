# HOW TO RUN

```
conftest test testdata/pass.json
conftest test testdata/fail.json
```

## Generate Terraform JSON planfile

```
terraform init
terraform plan -out=plan.out
terraform show -json plan.out
```

