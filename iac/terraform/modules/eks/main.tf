module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name               = var.cluster_name
  kubernetes_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  endpoint_public_access  = true
  endpoint_private_access = true

  enable_irsa = true

  authentication_mode = "API_AND_CONFIG_MAP"

  eks_managed_node_groups = {

    default = {

      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = var.instance_types
      capacity_type  = "ON_DEMAND"

      min_size     = var.min_size
      max_size     = var.max_size
      desired_size = var.desired_size

      disk_size = 30

      labels = {
        role = "general"
      }

      tags = {
        Name = "${var.project_name}-node-group"
      }
    }
  }

  tags = {
    Project     = var.project_name
    Environment = var.environment
  }
}
