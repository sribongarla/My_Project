# Screen-Share Script for Interview

## 1. Repo
This repo demonstrates an end-to-end EKS DevOps platform. It contains app code, Dockerfile, GitLab pipeline, Terraform infrastructure, Packer AMI, Kubernetes YAML, monitoring setup, and failure scenarios.

## 2. Pipeline
This is the `.gitlab-ci.yml` file. The pipeline has stages for validation, build, test, Docker build, Docker push, deployment, and post-deployment validation. I added manual approval for production.

## 3. Dockerfile
This Dockerfile packages the Java application. The pipeline builds a JAR file, then the Dockerfile copies that JAR into a runtime image. This ensures consistency across environments.

## 4. Kubernetes YAML
The deployment creates pods, the service provides a stable endpoint, and ingress exposes the app externally. Traffic flow is Ingress → Service → Pod → Container.

## 5. Monitoring
Prometheus collects metrics, Grafana visualizes them, Loki collects logs, and Tempo stores traces. Datadog can provide full-stack monitoring and synthetic checks.

## 6. Failure Scenario
One failure I can explain is Java memory pressure causing pod restarts. I debug it using pod events, logs, metrics, and then tune resources and alerting.
