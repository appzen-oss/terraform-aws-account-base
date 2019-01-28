resource "aws_key_pair" "devops" {
  provider   = "aws.member"
  key_name   = "${var.ssh_key_name}"
  public_key = "${var.ssh_public_key}"
}
