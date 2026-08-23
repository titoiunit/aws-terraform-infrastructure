# AWS Terraform Infrastructure

A hands-on AWS delivery project combining Terraform, Docker, GitHub Actions and GitHub OIDC.

The repository demonstrates how cloud infrastructure and application delivery can be kept repeatable, traceable and free from long-lived AWS credentials in CI/CD.

## What is implemented

| Area | Evidence |
|---|---|
| Terraform state | S3 remote backend with native lockfile support |
| Secure storage baseline | Bucket versioning, public-access blocking and Bucket Owner Enforced ownership |
| CI/CD authentication | GitHub Actions OIDC with short-lived IAM-role credentials |
| Terraform delivery | Format, init, validate, plan and apply workflow |
| Container delivery | Docker build and Amazon ECR publish workflow |
| Traceability | Environment and commit-SHA image tags |
| Environment structure | Explicit dev configuration plus dev/QA/prod workflow options |

## Delivery flow

```mermaid
flowchart LR
  P["Push or manual dispatch"] --> G["GitHub Actions"]
  G --> O["OIDC token"]
  O --> I["AWS IAM role"]
  G --> D["Docker build"]
  D --> E["Amazon ECR"]
  G --> T["Terraform validation and apply"]
  T --> S["S3 remote state"]
```

## Repository structure

```text
.github/workflows/     GitHub Actions: OIDC test, Terraform deploy, Docker → ECR
terraform/             AWS provider, remote state and secure S3 baseline
environments/dev/      Environment-specific provider configuration
modules/               Reusable-module foundation
Dockerfile             Container image definition
app.py                 Python application entry point
```

## Security decisions

- GitHub Actions uses `id-token: write` and assumes AWS IAM roles instead of storing access keys.
- The Terraform state backend is remote; state files remain out of version control.
- The S3 baseline enables versioning and blocks public access.
- Image tags include the commit SHA, giving a durable deployment reference.

## Validation

The Terraform workflow performs:

```text
terraform fmt → terraform init → terraform validate → terraform plan → terraform apply
```

The OIDC workflow verifies the assumed identity with `aws sts get-caller-identity`. The container workflow builds the image and publishes both environment and commit-SHA tags to ECR.

## Run locally

```bash
cd terraform
terraform init
terraform validate
terraform plan
```

Use AWS credentials with only the permissions required for the task. Never commit state, plans, credentials or local machine artifacts.

## Production-hardening next steps

- Pull-request plan output and review before applies
- Protected GitHub environments for QA and production
- Explicit rollback and image-retention policies
- Policy checks and cost estimation in CI
- Reusable modules with tests and examples

## Interview version

> I built this project to connect Terraform, Docker and GitHub Actions into a secure AWS delivery workflow. The key decision was OIDC, so GitHub assumes short-lived AWS roles instead of using stored credentials. The pipeline validates Terraform, publishes traceable ECR image tags and keeps state remote and locked. The next production step is PR planning and protected environments.

## Status

Active hands-on Cloud & DevOps project. The implemented workflows and infrastructure are linked above; future production controls are clearly identified rather than presented as complete.
