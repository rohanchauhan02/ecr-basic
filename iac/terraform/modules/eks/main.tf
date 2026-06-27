module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name               = var.cluster_name
  kubernetes_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  endpoint_public_access  = true
  endpoint_private_access = true

  authentication_mode = "API_AND_CONFIG_MAP"

  addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent    = true
      before_compute = true
    }
  }

  enabled_log_types = [
    "api",
    "audit",
    "authenticator",
    "controllerManager",
    "scheduler"
  ]

  eks_managed_node_groups = {

    default = {

      name = "${var.project_name}-${var.environment}-ng"

      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = var.instance_types
      capacity_type  = "ON_DEMAND"

      min_size     = var.min_size
      
      desired_size = var.desired_size
      max_size     = var.max_size

      disk_size = 50

      update_config = {
        max_unavailable = 1
      }

      labels = {
        role = "general"
        env  = var.environment
      }

      tags = {
        Name = "${var.project_name}-${var.environment}-ng"
      }
    }
  }

  tags = {
    Project     = var.project_name
    Environment = var.environment
  }
}
