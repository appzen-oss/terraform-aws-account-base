config {
terraform_version = "0.11.11"
deep_check = true
ignore_module = {
"git::https://github.com/cloudposse/terraform-aws-tfstate-backend.git?ref=master" = true
"git::https://github.com/devops-workflow/terraform-aws-route53-cluster-zone.git?ref=master" = true
}
}

