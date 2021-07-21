resource "random_password" "password" { #Uses the random provider to create 16 character password
  length           = 16
  special          = true
  override_special = "_%@/'\""
}

resource "aws_db_instance" "database" {
  allocated_strage        = 10
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t2.micro"
  identifier              = "${var.namespace}-db-instance"
  name                    = "pets"
  username                = "admin"
  password                = random_password.password.result
  db_subnet_group_name    = var.vpc.database_subnet_group #These values comes from the networking module.
  vpc_security_groups_ids = [var.sg.db]
  skip_final_snapshot     = true
}

