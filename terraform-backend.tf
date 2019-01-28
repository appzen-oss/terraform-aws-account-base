module "terraform_state" {
  source     = "cloudposse/tfstate-backend/aws"
  version    = "0.3.1"
  namespace  = "${var.organization}"
  stage      = "${local.account}"
  name       = "terraform"
  attributes = ["state"]
  region     = "${var.aws_region}"

  providers = {
    aws = "aws.member"
  }
}
