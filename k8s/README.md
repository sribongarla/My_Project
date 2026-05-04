# Kubernetes Manifests

## Traffic Flow

```text
User URL
  ↓
Ingress
  ↓
Service
  ↓
Pod
  ↓
Container
```

## Files

- `deployment.yaml`: Defines pod replicas, image, probes, and resources.
- `service.yaml`: Creates stable internal endpoint for pods.
- `ingress.yaml`: Exposes application externally.
- `configmap.yaml`: Stores non-sensitive config.
- `secret.yaml`: Stores sensitive values.
- `hpa.yaml`: Scales pods based on CPU/memory.
