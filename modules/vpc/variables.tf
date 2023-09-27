variable "name" {
  type = string
}

variable "cidr" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "public_subnets" {
  type    = map(map(string))
  default = {}
}

variable "public_subnet_tags" {
  type = map(string)
  default = {
    Type : "Public"
  }
}

variable "private_subnets" {
  type    = map(map(string))
  default = {}
}

variable "private_subnet_tags" {
  type = map(any)
  default = {
    Type = "Private"
  }
}

variable "database_subnets" {
  type    = map(any)
  default = {}
}

variable "database_subnet_tags" {
  type = map(any)
  default = {
    Type = "Database"
  }
}
