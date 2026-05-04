# Monitoring and Observability

## Metrics
- Prometheus collects Kubernetes and application metrics.
- Grafana visualizes metrics.

## Logs
- Loki collects application/container logs.
- CloudWatch can be used for AWS-native logs.

## Traces
- Tempo stores distributed traces.
- OpenTelemetry can send traces to Tempo.

## Datadog
Datadog can provide full-stack monitoring for infra, logs, APM, synthetic checks, and alerts.

## Key Alerts
- CPU > 75%
- Memory > 75%
- Disk > 75%
- Pod restarts > 3 in 10 minutes
- Pod pending > 10 minutes
- HTTP 5xx error rate high
- API latency above threshold
