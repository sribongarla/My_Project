#!/usr/bin/env bash
set -euo pipefail

NAMESPACE="${NAMESPACE:-platform-demo}"
IMAGE_URI="${IMAGE_URI:-replace-with-ecr-image-uri}"

kubectl create namespace "$NAMESPACE" --dry-run=client -o yaml | kubectl apply -f -
kubectl apply -n "$NAMESPACE" -f k8s/configmap.yaml
kubectl apply -n "$NAMESPACE" -f k8s/secret.yaml
sed "s|IMAGE_PLACEHOLDER|$IMAGE_URI|g" k8s/deployment.yaml | kubectl apply -n "$NAMESPACE" -f -
kubectl apply -n "$NAMESPACE" -f k8s/service.yaml
kubectl apply -n "$NAMESPACE" -f k8s/ingress.yaml
kubectl apply -n "$NAMESPACE" -f k8s/hpa.yaml
kubectl rollout status deployment/eks-devops-platform -n "$NAMESPACE"
