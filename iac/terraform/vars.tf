
variable "aws_region" {
  default = "us-east-1"
}

variable "project_name" {
  type = string
}

variable "environment" {
  default = "dev"
}

variable "repository_name" {
  type = string
}
variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}

variable "cluster_version" {
  type    = string
  default = "1.33"
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "bucket_name" {
  type    = string
  default = ""
}

variable "ecr_repository_name" {
  type    = string
  default = ""
}

