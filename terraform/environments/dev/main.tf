module "network" {
  source = "../../modules/network"

  name_prefix = var.name_prefix
  vpc_cidr    = var.vpc_cidr
  aws_region  = var.aws_region
}

module "eks" {
  source = "../../modules/eks"

  cluster_name       = "${var.name_prefix}-eks"
  subnet_ids         = module.network.private_subnet_ids
  kubernetes_version = var.kubernetes_version
  node_instance_type = var.node_instance_type
  desired_size       = var.desired_size
  min_size           = var.min_size
  max_size           = var.max_size
}

module "ecr" {
  source          = "../../modules/ecr"
  repository_name = "eks-devops-platform"
}
