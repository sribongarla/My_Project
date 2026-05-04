# Terraform AWS EKS Infrastructure

This folder contains sample Terraform code to provision:

- VPC
- Public/private subnets
- EKS cluster
- Managed node groups
- ECR repository
- IAM roles/security groups

## Usage

```bash
cd terraform/environments/dev
terraform init
terraform plan
terraform apply
```

Update `terraform.tfvars` before running.
