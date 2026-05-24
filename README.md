# AWS Terraform Infrastructure

Production-style AWS infrastructure project focused on Terraform, CI/CD, Docker, Python automation, and cloud deployment best practices.

## Overview

This project demonstrates how AWS cloud infrastructure can be built, organized, and documented using Infrastructure as Code and modern DevOps practices.

The goal of this repository is to show practical hands-on experience with AWS, Terraform, Docker, GitHub Actions, Python, and clean cloud project structure.

This is a portfolio project built to strengthen my cloud engineering skills and demonstrate how infrastructure can be created in a repeatable and maintainable way.

## What I built

- AWS infrastructure using Terraform
- Reusable Terraform module structure
- Environment-based infrastructure organization
- Dockerized Python application foundation
- GitHub Actions workflow structure
- Cloud deployment project layout
- Documentation for infrastructure and deployment practice

## Tech stack

- AWS
- Terraform
- Docker
- Python
- GitHub Actions
- Linux
- CI/CD
- Infrastructure as Code

## Project structure

```text
.
├── .github/workflows/     # GitHub Actions workflows
├── environments/          # Environment-specific configurations
├── modules/               # Reusable Terraform modules
├── terraform/             # Terraform infrastructure code
├── Dockerfile             # Docker build file
├── app.py                 # Python application
├── requirements.txt       # Python dependencies
└── README.md
```

## Why this project matters

Cloud infrastructure should not be built manually every time through a web console.

Using Terraform and Infrastructure as Code makes infrastructure:

- repeatable
- easier to review
- easier to document
- easier to update
- more consistent between environments

This project shows my ability to think beyond individual cloud services and understand how infrastructure, automation, application deployment, and documentation work together.

## Key learning areas

### Terraform and Infrastructure as Code

This project helped me practice how to define cloud infrastructure as code instead of creating resources manually.

Focus areas:

- Terraform project structure
- reusable modules
- environment separation
- infrastructure configuration
- repeatable deployment thinking

### AWS infrastructure

The project is focused on building AWS infrastructure in a structured way.

Focus areas:

- cloud resources
- deployment structure
- infrastructure organization
- AWS project workflow

### Docker and application deployment

The repository includes a Dockerized Python application foundation to connect infrastructure work with real application deployment.

Focus areas:

- Dockerfile structure
- Python application packaging
- container-based deployment thinking

### CI/CD foundation

The project includes GitHub Actions workflow structure to support automated checks and deployment practices.

Focus areas:

- automation
- deployment workflow thinking
- GitHub Actions structure
- DevOps best practices

## Security and cost notes

This repository is built for learning and portfolio purposes.

Important principles:

- do not commit secrets
- do not commit Terraform state files
- do not commit local generated files
- use `.gitignore` for local and sensitive files
- destroy cloud resources after testing to avoid unnecessary costs

## What I learned

Through this project, I practiced:

- how to structure a cloud infrastructure repository
- how Terraform supports repeatable infrastructure
- how Docker connects application code to cloud deployment
- how CI/CD fits into cloud engineering workflows
- how to document technical work clearly
- how to think in a more production-style cloud engineering way

## Future improvements

Possible next improvements:

- add clearer architecture diagrams
- improve Terraform module documentation
- add deployment screenshots
- add GitHub Actions pipeline examples
- add cost estimation notes
- add cleanup proof after testing

## Status

Active portfolio project for hands-on AWS, Terraform, Docker, Python, and DevOps practice.
