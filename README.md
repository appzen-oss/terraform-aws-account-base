# terraform-aws-account-base

[![CircleCI](https://circleci.com/gh/appzen-oss/terraform-aws-account-base.svg?style=svg)](https://circleci.com/gh/appzen-oss/terraform-aws-account-base)
[![Github release](https://img.shields.io/github/release/appzen-oss/terraform-aws-account-base.svg)](https://github.com/appzen-oss/terraform-aws-account-base/releases)

Terraform module to setup a member account in an organization

[Terraform registry](https://registry.terraform.io/modules/appzen-oss/account-base/aws)

## Usage

### Basic Example

```hcl
module "" {
  source        = "appzen-oss/account-base/aws"
  version       = "0.0.1"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| account\_name | Name of member account | string | n/a | yes |
| aws\_region |  | string | `"us-east-1"` | no |
| organization | Organization namespace | string | n/a | yes |
| ssh\_key\_name | AWS key pair name | string | n/a | yes |
| ssh\_public\_key | SSH public key to add to AWS and use on instances | string | n/a | yes |
| top\_level\_domain | Top level DNS domain. Account subdomain will be added to this | string | n/a | yes |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM GRAPH HOOK -->

### Resource Graph of plan

![Terraform Graph](resource-plan-graph.png)
<!-- END OF PRE-COMMIT-TERRAFORM GRAPH HOOK -->
