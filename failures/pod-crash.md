# Failure Scenario: Pod CrashLoopBackOff

## Symptom
Pod is repeatedly restarting.

## Commands

```bash
kubectl get pods -n platform-demo
kubectl describe pod <pod-name> -n platform-demo
kubectl logs <pod-name> -n platform-demo
```

## Possible Causes
- Application startup error
- Missing environment variable
- Wrong secret/config
- JVM memory issue
- Container command issue

## Fix
- Check logs
- Validate ConfigMap/Secret
- Validate image tag
- Fix resource limits
- Redeploy

## Interview Explanation
I start with pod status, then describe the pod for events, then check application logs. Most CrashLoopBackOff issues come from app startup failure, missing config, secret mismatch, or memory pressure.
