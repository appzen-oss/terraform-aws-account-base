//
// Manage account alias (IAM)
//
resource "aws_iam_account_alias" "alias" {
  provider      = "aws.member"
  account_alias = "${var.account_name}"
}
