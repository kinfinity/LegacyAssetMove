 resource "aws_security_group" "default" {
  name        = "security_group"
  description = "Default security group"
  vpc_id      = var.vpc_id

  # Allow outbound internet access.
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}

 resource "aws_security_group" "postgres-security_group" {
  
  name        = var.db_securitygroup_name
  description = "security group"
  vpc_id      = var.vpc_id

  # 
  ingress {
    from_port       = 5432
    to_port         = 65535
    protocol        = "tcp"
    security_groups = ["${aws_security_group.default.id}"]
  }
  # Allow all outbound traffic.
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}