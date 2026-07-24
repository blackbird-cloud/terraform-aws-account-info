<!-- BEGIN_TF_DOCS -->
# Terraform Aws Account Info Module
A Terraform module which uses a number of datasources to read information about the current AWS account. Handy when used in combination with Terragrunt, one will have fewer variables to hardcode on the Terragrunt files.

[![blackbird-logo](https://raw.githubusercontent.com/blackbird-cloud/terraform-module-template/main/.config/logo_simple.png)](https://blackbird.cloud)

## Example
```hcl
module "account_info" {
  source  = "blackbird-cloud/account-info/aws"
  version = "~> 2"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4 |

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_roles.roles](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_roles) | data source |
| [aws_organizations_organization.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization) | data source |
| [aws_organizations_organizational_units.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organizational_units) | data source |
| [aws_partition.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_sso_permission_sets"></a> [aws\_sso\_permission\_sets](#input\_aws\_sso\_permission\_sets) | (Optional) List of permission-set names for which to retrieve the IAM roles. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | The account's account id. |
| <a name="output_organization"></a> [organization](#output\_organization) | The account's organization. |
| <a name="output_organizational_units"></a> [organizational\_units](#output\_organizational\_units) | The account's organizational units. Is empty on non management-account. |
| <a name="output_partition"></a> [partition](#output\_partition) | The account's partition. |
| <a name="output_region"></a> [region](#output\_region) | The current region. |
| <a name="output_sso_roles"></a> [sso\_roles](#output\_sso\_roles) | The roles created by the IAM Identity Center, configure the variable `aws_sso_permission_sets` when you want to retrieve these. |

## About

We are [Blackbird Cloud](https://blackbird.cloud), Amsterdam based cloud consultancy, and cloud management service provider. We help companies build secure, cost efficient, and scale-able solutions.

Checkout our other :point\_right: [terraform modules](https://registry.terraform.io/namespaces/blackbird-cloud)

## Copyright

Copyright © 2017-2025 [Blackbird Cloud](https://blackbird.cloud)
<!-- END_TF_DOCS -->