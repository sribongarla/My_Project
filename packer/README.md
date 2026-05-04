# Packer AMI Build

This template creates a standardized AWS AMI with baseline packages and monitoring agent installed.

## Build

```bash
cd packer
packer init .
packer validate ami.pkr.hcl
packer build ami.pkr.hcl
```

## Interview Explanation

I use Packer to avoid manually configuring servers. The AMI includes OS baseline, required packages, security patches, Docker/container dependencies, and monitoring agents. This creates consistent EKS worker nodes and avoids configuration drift.
