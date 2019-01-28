//
// Setup subdomain for account
//
# Pin to version
# Need to release on registry ??
module "domain_account" {
  source           = "git::https://github.com/devops-workflow/terraform-aws-route53-cluster-zone.git?ref=master"
  namespace        = ""
  stage            = ""
  name             = "${local.account}"                                                                          # calc from account_name: appzen-admin
  parent_zone_name = "${var.top_level_domain}"
  zone_name        = "$${name}.$${parent_zone_name}"

  providers = {
    aws             = "aws.member"
    aws.parent_zone = "aws.parent"
  }
}
