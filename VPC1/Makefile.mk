.ONESHELL:
.ONSHELL:= /usr/bin/bash
.PHONY: dev prod

dev:
	@terraform init
	@terraform apply -auto-approve -var-file=devcidr.tfvars