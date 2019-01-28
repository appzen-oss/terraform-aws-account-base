
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
