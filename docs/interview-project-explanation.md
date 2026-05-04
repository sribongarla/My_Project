# Project Explanation: AWS EKS Platform Automation


 built an AWS EKS platform automation project using Terraform, Packer, GitLab CI/CD, Docker, and Kubernetes. Terraform provisioned AWS infrastructure, Packer created standard AMIs, GitLab automated build/test/deploy, and Kubernetes ran the workloads on EKS. For observability, I used Prometheus, Grafana, Loki, Tempo, and Datadog.

## Why This Design

- EKS: scalable microservices platform with self-healing and rolling updates.
- Docker: consistent application runtime across environments.
- Terraform: repeatable, version-controlled infrastructure.
- Packer: consistent worker node images.
- GitLab CI/CD: automated build, test, image push, and deployment.
- Prometheus/Grafana/Loki/Tempo/Datadog: metrics, dashboards, logs, traces, alerts.

## Challenges

- Pod evictions due to resource pressure.
- Java services with high memory usage.
- Database secret mismatch.
- Service/Ingress routing issues.

## Improvements

 would add stronger policy-as-code, image scanning, OpenTelemetry standards, GitOps with ArgoCD, and automated rollback based on health checks.
