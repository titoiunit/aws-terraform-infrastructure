# Terraform Environments

This directory separates configuration that is specific to an environment from reusable Terraform code.

## Current state

Only `dev/` is currently implemented. It contains the variables, outputs, and configuration used for the development environment.

```text
environments/
└── dev/
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    └── dev.tfvars
```

`staging/` and `prod/` are intentionally not present yet. They should be added only when there is a real configuration, access-control, or release-process difference to demonstrate — not just to make the repository look larger.

## When adding another environment

- Use a separate remote-state key per environment.
- Keep credentials and secrets out of `.tfvars` files committed to Git.
- Document which inputs differ from `dev` and why.
- Protect production changes with review and an explicit plan/apply process.
- Keep modules provider-agnostic where practical and pass environment-specific values from this layer.

## Validation

Run the Terraform checks from the relevant environment context and review the plan before applying:

```bash
terraform fmt -check -recursive
terraform init
terraform validate
terraform plan -var-file=dev.tfvars
```

The CI workflows at the repository root are the canonical automation reference.