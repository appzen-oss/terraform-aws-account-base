locals {
  account = "${replace(var.account_name, "/.*-/", "")}"
}
