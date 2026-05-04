# EKS DevOps Platform: CI/CD, Terraform, Packer, Kubernetes & Observability

This project demonstrates an end-to-end DevOps / Platform Engineering workflow for deploying a containerized application on AWS EKS.

## What this project shows

- Application build and containerization with Docker
- GitLab CI/CD pipeline for build, test, image push, and deployment
- Terraform-based AWS infrastructure provisioning
- Packer-based AMI creation for standardized EKS worker nodes
- Kubernetes manifests for Deployment, Service, Ingress, ConfigMap, Secret, and HPA
- Observability using Prometheus, Grafana, Loki, Tempo, and Datadog examples
- Real failure scenarios and troubleshooting steps

## Architecture Flow

```text
Developer Commit
   ↓
GitLab Merge Request
   ↓
GitLab CI/CD Pipeline
   ↓
Build + Test
   ↓
Docker Image Build
   ↓
Push Image to Amazon ECR
   ↓
Deploy to Amazon EKS
   ↓
Ingress → Service → Pod → Container
   ↓
Prometheus / Grafana / Loki / Tempo / Datadog Monitoring
```

## Tools Used

| Area | Tools |
|---|---|
| Cloud | AWS |
| Kubernetes | Amazon EKS |
| IaC | Terraform |
| Image Build | Packer |
| CI/CD | GitLab CI/CD |
| Containerization | Docker |
| Registry | Amazon ECR |
| Monitoring | Prometheus, Grafana, Datadog |
| Logs | Loki, CloudWatch |
| Tracing | Tempo |
| Scripting | Bash |
| Security | IAM, RBAC, Security Groups, Kubernetes Secrets |

## Repo Structure

```text
eks-devops-platform/
├── app/                    # Sample Java Spring Boot application
├── cicd/                   # GitLab CI/CD pipeline
├── terraform/              # AWS infrastructure code
├── packer/                 # AMI build template
├── k8s/                    # Kubernetes manifests
├── monitoring/             # Prometheus, Grafana, Loki, Tempo, Datadog examples
├── scripts/                # Helper scripts
├── failures/               # Failure scenarios and fixes
└── docs/                   # Interview explanation and architecture notes
```

## Project Summary for Interview

I built an AWS EKS platform automation project where I used Terraform to provision infrastructure, Packer to build standard AMIs, GitLab CI/CD to automate build and deployment, and Docker to containerize microservices. Applications were deployed into EKS using Kubernetes objects like Deployments, Services, Ingress, ConfigMaps, Secrets, and HPA. I implemented observability using Prometheus, Grafana, Datadog, Loki, and Tempo for metrics, logs, traces, and alerting. I also documented real failure scenarios like pod evictions, Java memory issues, database secret failures, and application routing problems.

## How to Present in Interview

1. Start with the problem: manual deployments and inconsistent infrastructure.
2. Show the repo structure.
3. Open `.gitlab-ci.yml` and explain stages.
4. Open `Dockerfile` and explain image creation.
5. Open Terraform and explain AWS/EKS provisioning.
6. Open Packer and explain standard AMI creation.
7. Open Kubernetes YAML and explain traffic flow.
8. Open monitoring files and explain metrics/logs/traces.
9. Open failure scenarios and explain troubleshooting.

## Important Notes

This is a portfolio/demo project. Replace placeholders such as AWS account ID, domain names, ECR repository, and secrets before running in a real environment.
