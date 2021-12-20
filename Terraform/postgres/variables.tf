variable "database_name" {
  description = "Database Name"
  type        = string
}
variable "database_user" {
  description = "Database Name"
  type        = string
}
variable "database_password" {
  description = "Database Name"
  type        = string
  default = "unsafepassword"
}
variable "db_instance" {
  description = "Database Name"
  type        = string
}

variable "env" {
  description = "Environment"
  type        = string
  default = "prod"
}
variable "db_securitygroup_name" {
  description = "Database Security Group"
  type        = string
}

variable "vpc_id" {
  description = "VPC id"
  type        = string
}



variable "team" {
  description = "Team which owns the Database"
  type        = string
}

variable "application" {
  description = "Application which uses the Database"
  type        = string
}

variable "contact_email" {
  description = "Team email"
  type        = string
  default = ""
}

variable "environment" {
  description = "Team email"
  type        = string
  default = "prod"
}

variable "postgres_port" {
  description = ""
  default = 5432
}

variable "project_name" {
  description = "Terraform Project Name"
  type        = string
  default     = "Legacy Asset Move"
}