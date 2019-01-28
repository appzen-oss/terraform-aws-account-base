module "example" {
  source           = "../../"
  account_name     = "${var.account_name}"
  aws_region       = "${var.aws_region}"
  organization     = "${var.organization}"
  ssh_key_name     = "${var.ssh_key_name}"
  ssh_public_key   = "${var.ssh_public_key}"
  top_level_domain = "${var.top_level_domain}"

  providers = {
    aws.member = "aws.dev"
    aws.parent = "aws.legacy"
  }
}
