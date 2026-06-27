variable "repository_name" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "image_tag_mutability" {
  type    = string
  default = "MUTABLE"
}

variable "scan_on_push" {
  type    = bool
  default = true
}

variable "enable_lifecycle_policy" {
  type    = bool
  default = true
}

variable "images_to_keep" {
  type    = number
  default = 10
}

variable "tags" {
  type    = map(string)
  default = {}
}
