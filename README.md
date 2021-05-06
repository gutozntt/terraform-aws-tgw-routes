# TGW Routes

Use this module to create routes pointing to TGW dynamically. Best use case is to use with multiple VPCs that are connected through a Transit Gateway.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| destination\_cidr\_blocks | n/a | `list` | n/a | yes |
| tgw\_id | n/a | `any` | n/a | yes |
| vpc\_id | n/a | `any` | n/a | yes |

## Outputs

No output.
