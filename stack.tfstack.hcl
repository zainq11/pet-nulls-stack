variable "prefix" {
  type = string
}

variable "instances" {
  type = number
}

component "pet" {
  source = "./pet"
  inputs = {
    prefix = var.prefix
  }
  animal = cool.horse
}

component "nulls" {
  source = "./nulls"
  inputs = {
    pet       = component.pet.name
    instances = var.instances
  }
}
