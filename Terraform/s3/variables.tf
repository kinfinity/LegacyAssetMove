# Variables
variable "legacy_bucket_name" {
  description = "name of the legacy bucket"
}

variable "production_bucket_name" {
  description = "name of the production bucket"
}

variable "iam_user" {
  description = "user name for s3 access"
}


# Tags
variable "project_name" {
  description = "name of project"
}
# ~
variable "legacy_contact_email" {
  description = "support for resource"
}

variable "legacy_team" {
  description = "Team which owns the storage"
  type        = string
}

variable "legacy_application" {
  description = "Application which uses the storage"
  type        = string
}

variable "legacy_environment" {
  description = "environment"
  type        = string
  default = "prod"
}
# ~

variable "production_contact_email" {
  description = "support for resource"
}

variable "production_team" {
  description = "Team which owns the storage"
  type        = string
}

variable "production_application" {
  description = "Application which uses the storage"
  type        = string
}

variable "production_environment" {
  description = "environment"
  type        = string
  default = "prod"
}
