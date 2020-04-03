# terraform-aws-tardigrade-vpc-endpoints

Terraform module to create VPC Endpoints

## Terraform version requirements
Terraform `>= 0.12.9` is required due to a bug fix related to empty sets with `for_each`. The fix was included in
version `0.12.9` -- see the [Changelog here](https://github.com/hashicorp/terraform/blob/v0.12/CHANGELOG.md#0129-september-17-2019).
The original [bug was reported as issue #22281](https://github.com/hashicorp/terraform/issues/22281).

<!-- BEGIN TFDOCS -->
## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| sg\_egress\_rules | Egress rules for the VPC Endpoint SecurityGroup(s). Set to empty list to disable default rules. | `list` | n/a | yes |
| sg\_ingress\_rules | Ingress rules for the VPC Endpoint SecurityGroup(s). Set to empty list to disable default rules. | `list` | n/a | yes |
| create\_sg\_per\_endpoint | Toggle to create a SecurityGroup for each VPC Endpoint. Defaults to using just one for all Interface Endpoints. Note that Gateway Endpoints don't support SecurityGroups. | `bool` | `false` | no |
| create\_vpc\_endpoints | Toggle to create VPC Endpoints. | `bool` | `true` | no |
| subnet\_ids | Target Subnet ids. | `list(string)` | `[]` | no |
| tags | A map of tags to add to the VPC Endpoint and to the SecurityGroup(s). | `map(string)` | `{}` | no |
| vpc\_endpoint\_services | List of AWS Endpoint service names that are used to create VPC Interface Endpoints. Both Gateway and Interface Endpoints are supported. See https://docs.aws.amazon.com/general/latest/gr/rande.html for full list. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| vpc\_endpoint\_interface\_services | n/a |
| vpc\_endpoint\_gateway\_services | n/a |
| vpc\_endpoint\_sgs | n/a |

<!-- END TFDOCS -->
