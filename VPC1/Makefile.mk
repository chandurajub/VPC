.ONESHELL:
.SHELL := /usr/bin/bash
.PHONY: dev prod
LOG=/tmp/terraform-make.log

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[35m%-10s\033[0m %s\n", $$1, $$2}'

dev: ## Apply Module in Prod Environement
	@terraform init
	@terraform apply -auto-approve -var-file=devcidr.tfvars

prod: ## Apply Module in NonProd Environement
	@terraform init
	@terraform apply -auto-approve -var-file=prodcidr.tfvars

