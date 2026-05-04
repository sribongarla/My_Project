packer {
  required_plugins {
    amazon = {
      version = ">= 1.3.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "source_ami_filter_name" {
  type    = string
  default = "amzn2-ami-hvm-*-x86_64-gp2"
}

source "amazon-ebs" "eks_worker_base" {
  region        = var.aws_region
  instance_type = "t3.medium"
  ssh_username  = "ec2-user"
  ami_name      = "eks-worker-standard-{{timestamp}}"

  source_ami_filter {
    filters = {
      name                = var.source_ami_filter_name
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    owners      = ["amazon"]
    most_recent = true
  }
}

build {
  sources = ["source.amazon-ebs.eks_worker_base"]

  provisioner "shell" {
    inline = [
      "sudo yum update -y",
      "sudo yum install -y jq curl unzip amazon-cloudwatch-agent",
      "sudo yum install -y docker",
      "sudo systemctl enable docker",
      "sudo usermod -aG docker ec2-user",
      "echo 'Baseline packages and monitoring agent installed'"
    ]
  }
}
