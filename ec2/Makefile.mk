
.ONESHELL:
.SHELL := /usr/bin/bash
.PHONY: prod_apply nonprod_apply prod_destroy nonprod_destroy
LOG=/tmp/terraform-make.log

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[35m%-10s\033[0m %s\n", $$1, $$2}'

prod_apply: ## Apply Module in Prod Environement
	@terraform init
	@terraform workspace new prod || terraform workspace select prod
	@terraform apply -auto-approve -var-file=prodcidr.tfvars

nonprod_apply: ## Apply Module in NonProd Environement
	@terraform init
	@terraform workspace new nonprod || terraform workspace select nonprod
	@terraform apply -auto-approve -var-file=devcidr.tfvars
prod_destroy: ## Apply Module in NonProd Environement
	@terraform init
	@terraform workspace new prod || terraform workspace select prod
	@terraform destroy -auto-approve -var-file=prodcidr.tfvars
nonprod_destroy: ## Apply Module in NonProd Environement
	@terraform init
	@terraform workspace new nonprod || terraform workspace select nonprod
	@terraform destroy -auto-approve -var-file=devcidr.tfvars

