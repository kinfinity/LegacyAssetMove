data "aws_availability_zones" "available" {}

resource "aws_subnet" "rds1" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-1a"

}

resource "aws_subnet" "rds2" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.5.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-1b"

}

resource "aws_subnet" "rds3" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.6.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-1c"

}

resource "aws_db_subnet_group" "default" {
  name        = "${var.db_instance}-subnet-group"
  description = "RDS subnet group"
  subnet_ids  = [aws_subnet.rds1.id,aws_subnet.rds2.id,aws_subnet.rds3.id]
}