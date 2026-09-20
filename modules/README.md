# Secure S3 Terraform Module

This directory contains the reusable secure-storage module used by both the canonical Terraform root and the development-environment example.

## Security defaults

The module creates an S3 bucket with:

- versioning enabled
- all public-access controls enabled
- Bucket Owner Enforced object ownership
- caller-provided tags plus a consistent `Name` tag

## Inputs

| Name | Description | Required |
|---|---|---:|
| `bucket_name` | Globally unique S3 bucket name | Yes |
| `tags` | Additional resource tags | No |

## Outputs

- `bucket_name`
- `bucket_arn`

## Example

```hcl
module "secure_s3" {
  source = "../../modules"

  bucket_name = var.bucket_name

  tags = {
    Project     = "aws-terraform-infrastructure"
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}
```

The canonical configuration under `terraform/` also uses this module. Terraform `moved` blocks preserve the existing resource addresses during the transition from inline resources to the module.
