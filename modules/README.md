# Terraform Module Boundary

This directory is the starting point for reusable Terraform modules. It currently contains an interface scaffold (`variables.tf` and `outputs.tf`), not a finished catalogue of reusable resource modules.

## Why keep this boundary

A module should represent a stable responsibility with a clear input/output contract — for example a VPC, ECR repository, ECS service, or secure storage bucket. Extracting a module too early can make a small Terraform project harder to understand, so this repository keeps the boundary visible while the implementation remains intentionally small.

## Module standard

Before a module is treated as reusable, it should have:

1. A focused purpose and documented inputs/outputs.
2. No hard-coded environment identifiers or secrets.
3. Version constraints and provider assumptions stated clearly.
4. A simple example from an environment configuration.
5. `terraform fmt` and `terraform validate` coverage in CI.
6. Notes on security defaults, ownership, and destroy behaviour.

## Planned use

As the infrastructure grows, this directory can hold modules such as:

```text
modules/
├── network/
├── storage/
├── ecr/
└── application/
```

Until then, the root `terraform/` configuration remains the source of truth for the implemented secure S3 state/storage example.