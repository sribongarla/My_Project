# Failure Scenario: Application Not Reachable

## Symptom
Pods are running, but URL does not work.

## Debug Flow

```bash
kubectl get ingress -n platform-demo
kubectl get svc -n platform-demo
kubectl get endpoints -n platform-demo
kubectl describe ingress eks-devops-platform -n platform-demo
```

## Possible Causes
- Ingress rule misconfigured
- Service selector does not match pod labels
- Target port mismatch
- Security group or ALB issue
- DNS issue

## Fix
- Validate traffic flow: Ingress → Service → Pod
- Check service selector labels
- Confirm container port and target port
- Validate ALB/security group/DNS

## Interview Explanation
If the app is not reachable, I check the full traffic path from ingress to service to pod. A common issue is selector mismatch between service and pod labels.
