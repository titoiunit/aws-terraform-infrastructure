# Terraform Environments

This directory separates environment-specific composition and values from the reusable module under `modules/`.

## Current state

Only `dev/` is implemented. It is a runnable Terraform root that calls the secure S3 module with development-specific inputs and exposes the resulting bucket name and ARN.

```text
environments/
└── dev/
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    └── dev.tfvars
```

The canonical CI-managed configuration remains under `terraform/`. The development example uses a different bucket name and separate state so that the two Terraform roots do not attempt to manage the same object.

`staging/` and `prod/` are intentionally not present. Add them only when a real configuration, access-control or release-process difference exists.

## When adding another environment

- Use a separate remote-state key per environment.
- Keep credentials and secrets out of committed `.tfvars` files.
- Document which inputs differ from `dev` and why.
- Protect production changes with review and an explicit plan/apply process.
- Pass environment-specific values into reusable modules rather than hard-coding them inside modules.

## Validation

Run checks from the relevant environment directory and review the plan before applying:

```bash
cd environments/dev
terraform fmt -check -recursive
terraform init
terraform validate
terraform plan -var-file=dev.tfvars
```

The GitHub Actions workflows at the repository root remain the canonical automation reference.
