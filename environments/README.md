# Environments

This folder contains environment-specific Terraform configuration.

The purpose is to separate infrastructure settings by environment, such as development, staging, or production-style setups.

## Why this matters

Separating environments helps make cloud infrastructure more organized, easier to review, and safer to update.

## Example structure

```text
environments/
├── dev/
├── staging/
└── prod/
```

## Notes

This project is built for portfolio and learning purposes. Real production environments should also include secure state management, access control, and approval workflows.
