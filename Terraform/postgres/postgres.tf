resource "aws_db_parameter_group" "postgres-paramg" {
  name   = "${var.db_instance}-paramg"
  family = "postgres13"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}

resource "aws_db_instance" "default" {
  identifier                = "${var.db_instance}"
  allocated_storage         = 5
  instance_class            = "db.t2.micro"
  engine               = "postgres"
  engine_version       = "11.12"
  name                      = "${var.database_name}"
  username                  = "${var.database_user}"
  password                  = "${var.database_password}"
  db_subnet_group_name      = "${aws_db_subnet_group.default.id}"
  vpc_security_group_ids    = ["${aws_security_group.postgres-security_group.id}"]
  skip_final_snapshot       = true
  final_snapshot_identifier = "Ignore"
  
   tags = {
    project_name   = var.project_name
    environment   = var.env
  }
}