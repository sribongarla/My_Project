# Failure Scenario: Database Secret / Credential Failure

## Symptom
Pod starts but application cannot connect to database.

## Debug Flow

```bash
kubectl logs <pod-name> -n platform-demo
kubectl get secret eks-devops-platform-secret -n platform-demo -o yaml
kubectl rollout restart deployment eks-devops-platform -n platform-demo
```

## Possible Causes
- DB password changed
- Secret not updated
- Wrong hostname
- Security group/network issue
- Database unavailable

## Fix
- Update Kubernetes Secret
- Restart deployment
- Validate DB connectivity
- Improve secret rotation process


One real-world example is a DB password change where the app still used old credentials. updated the Kubernetes Secret and restarted the deployment.
