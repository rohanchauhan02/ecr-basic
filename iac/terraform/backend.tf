terraform {
  required_version = ">= 1.10"
  backend "s3" {
    bucket       = "rohan-tf-remote-backend"
    key          = "rohan/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true # which creates and manages a lock file in S3, eliminating the need for DynamoDB.
  }
}
