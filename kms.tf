resource "aws_kms_key" "account" {
  provider    = "aws.member"
  description = "${var.account_name} account key"

  # tags = {}
}

# Aliases: account name, 'account'

resource "aws_kms_alias" "account" {
  provider      = "aws.member"
  name          = "alias/account"
  target_key_id = "${aws_kms_key.account.key_id}"
}

resource "aws_kms_alias" "account_name" {
  provider      = "aws.member"
  name          = "alias/${var.account_name}"
  target_key_id = "${aws_kms_key.account.key_id}"
}

/**
data "aws_kms_key" "account" {
  provider = "aws.member"
  key_id   = "alias/account"
}

output "key_arn" {
  value = "${data.aws_kms_key.account.arn}"
}

output "key_id" {
  value = "${data.aws_kms_key.account.id}"
}

output "alias_arn" {
  value = "${data.aws_kms_alias.account.arn}"
}

output "alias_key_arn" {
  value = "${data.aws_kms_alias.account.target_key_arn}"
}

output "alias_key_id" {
  value = "${data.aws_kms_alias.account.target_key_arn}"
}

/**/

