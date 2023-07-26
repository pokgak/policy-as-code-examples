# HOW TO RUN

## Run

conftest test pass.json
conftest test fail.json

## Generate Terraform JSON planfile
1. terraform init
1. terraform plan -out=plan.out
1. terraform show -json plan.out

