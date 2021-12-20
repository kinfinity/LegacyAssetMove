variable "name" {
  description = "Name to be used"
  type        = string
}

variable "project_name" {
  description = "Terraform Project Name"
  type        = string
  default     = "Legacy Asset Move"
}

variable "env" {
  description = "Environment"
  type        = string
  default = "prod"
}

variable "cidr_block" {
  description = "VPC CIDR Block to use"
  type        = map(string)

  default = {
    prod  = "10.0.0.0/16"
  }
}
