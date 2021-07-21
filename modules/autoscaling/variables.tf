variable "namespace" {
  type = string
}

variable "ssh_keypair" {
  type = string
}

variable "vpc" {
  type = any
}

variable "db_config" { #Enforces a strict type schema for db_config object. The value set for this variable must implement the same type schema.
  type = object(
    {
      user     = string
      password = string
      database = string
      hostname = string
      port     = string
    }
  )
}





