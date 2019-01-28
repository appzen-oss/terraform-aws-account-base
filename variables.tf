variable "account_name" {
  description = "Name of member account"
}

variable "aws_region" {
  description = ""
  default     = "us-east-1"
}

variable "organization" {
  description = "Organization namespace"
}

variable "ssh_key_name" {
  description = "AWS key pair name"
}

variable "ssh_public_key" {
  description = "SSH public key to add to AWS and use on instances"
}

variable "top_level_domain" {
  description = "Top level DNS domain. Account subdomain will be added to this"
}
