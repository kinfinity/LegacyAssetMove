data "aws_availability_zones" "available" {}

resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block[var.env]

   tags = {
    project_name   = var.project_name
    environment   = var.env
  }
  
}
