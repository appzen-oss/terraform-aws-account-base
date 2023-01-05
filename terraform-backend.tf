module "terraform_state" {
  source                  = "cloudposse/tfstate-backend/aws"
  version                 = "0.4.0"
  namespace               = "${var.organization}"
  stage                   = "${local.account}"
  name                    = "terraform"
  attributes              = ["state"]
  region                  = "${var.aws_region}"
  block_public_acls       = "true"
  block_public_policy     = "true"
  ignore_public_acls      = "true"
  restrict_public_buckets = "true"
  tags                    = "${var.tags}"

  providers = {
    aws = "aws.member"
  }
}
