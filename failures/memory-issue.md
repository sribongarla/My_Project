# Failure Scenario: Java Memory Leak / High Memory Usage

## Symptom
Memory usage keeps increasing and pod restarts.

## Debug Flow

```bash
kubectl top pods -n platform-demo
kubectl describe pod <pod-name> -n platform-demo
kubectl logs <pod-name> -n platform-demo
```

## Monitoring
Check:
- JVM heap usage
- Container memory usage
- Pod restarts
- OOMKilled events

## Fix
- Temporarily increase memory limit
- Tune JVM options
- Work with developers on heap analysis
- Add alert at 70–75%
- Review code for memory leaks

## Interview Explanation
I stabilize first by tuning resources, then investigate heap/logs with developers, and finally improve monitoring so we detect it earlier.
