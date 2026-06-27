terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket       = "rohan-tf-remote-backend"
    key          = "rohan/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true # which creates and manages a lock file in S3, eliminating the need for DynamoDB.
  }
}
