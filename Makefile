all: login init demostack apply
.PHONY: all doormat_creds doormat_aws deploy destroy console
TFC_ORG = engfors-hashicorp
WORKSPACE_DEMOSTACK = terraform-aws-demostack
DOORMAT_AWS_ACCOUNT = aws_emil.engfors_test
login:
		doormat login
init:
		terraform init
demostack:
		doormat aws --account $(DOORMAT_AWS_ACCOUNT)  tf-push --local
apply:
		terraform init
		terraform plan
		terraform apply
destroy:
		terraform destroy
