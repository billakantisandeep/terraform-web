output "db_config" {
  value = { #All the data in db_config comes from select output of the resource aws_db_instance resource.
    user     = aws_db_instance.database.username
    password = aws_db_instance.database.password
    hostname = aws_db_instance.database.name
    port     = aws_db_instance.database.port
  }
}


