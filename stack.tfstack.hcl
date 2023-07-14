variable "prefix" {
  type = string
}

variable "instances" {
  type = number
}

variable "aws_jwt_filepath" {
  type = string
}

component "pet" {
  source = "./pet"
  inputs = {
    prefix = var.prefix
  }
}

component "nulls" {
  source = "./nulls"
  inputs = {
    pet       = component.pet.name
    instances = var.instances
  }
}
