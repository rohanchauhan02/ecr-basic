
project_name = "go-app"
environment = "dev"
aws_region = "us-east-1"
bucket_name = "go-app-dev-bucket"
ecr_repository_name = "go-app"
instance_type = "t3.medium"
repository_name = "go-app"
cluster_version = "1.32"

vpc_cidr = "10.0.0.0/16"
public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]
private_subnet_cidrs = [
  "10.0.11.0/24",
  "10.0.12.0/24"
]
availability_zones = [
  "us-east-1a",
  "us-east-1b"
]
