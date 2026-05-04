#!/usr/bin/env bash
set -euo pipefail

NAMESPACE="${NAMESPACE:-platform-demo}"
APP="${APP:-eks-devops-platform}"

echo "Pods:"
kubectl get pods -n "$NAMESPACE" -l app="$APP" -o wide

echo "Deployment:"
kubectl describe deployment "$APP" -n "$NAMESPACE"

echo "Events:"
kubectl get events -n "$NAMESPACE" --sort-by=.lastTimestamp | tail -20

echo "Logs:"
POD=$(kubectl get pods -n "$NAMESPACE" -l app="$APP" -o jsonpath='{.items[0].metadata.name}')
kubectl logs "$POD" -n "$NAMESPACE" --tail=100
