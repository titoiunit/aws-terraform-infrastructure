# Historical AWS Deployment Validation

This project was deployed and validated in a real AWS learning account during its Free Tier period. The account was intentionally retired after the hands-on projects were completed to avoid maintaining unused cloud resources and credentials.

The current repository therefore runs provider-independent portfolio CI only. It does not claim that a live AWS environment is still operating.

## Verified delivery evidence

The GitHub Actions history retains successful runs from the active AWS phase:

- [Terraform deployment to AWS — successful run](https://github.com/titoiunit/aws-terraform-infrastructure/actions/runs/23757359671)
- [GitHub OIDC role verification — successful run](https://github.com/titoiunit/aws-terraform-infrastructure/actions/runs/23742622936)
- [Docker build and Amazon ECR publication — successful run](https://github.com/titoiunit/aws-terraform-infrastructure/actions/runs/23768419201)

These runs demonstrated:

- GitHub Actions authentication to AWS through OIDC and short-lived credentials
- Terraform format, initialization, validation, planning and apply
- S3 remote state with lockfile support
- Docker image build and publication to Amazon ECR
- environment and commit-SHA image tags

## Why the active deployment workflows were retired

The former AWS account no longer exists. Leaving account-specific role ARNs, state-bucket names and automatic apply jobs active would create permanently failing CI and imply that the repository still controls live infrastructure.

The active CI now verifies the parts that remain reproducible without an AWS account:

- Terraform formatting and static validation
- module composition for the canonical and development configurations
- Docker image construction
- application container startup and health endpoint

## Reusing the deployment pattern

To deploy the project in another AWS account:

1. Create a dedicated Terraform state bucket.
2. Copy `terraform/backend.hcl.example` to an untracked `terraform/backend.hcl`.
3. Configure the new bucket, key and region.
4. Supply a globally unique demonstration bucket name.
5. Configure GitHub OIDC and a least-privilege IAM role for the new repository/account relationship.
6. Add reviewed plan and explicitly approved apply stages rather than enabling automatic apply by default.
