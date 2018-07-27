variable "spn_name" {}

variable "spn_url" {
  default = "https://portal.azure.com"
}

variable "spn_expiry" {
  default = "2020-01-01T01:02:03Z"
}

variable "generate_password" {
  default = true
}

variable "spn_password" {
  default = ""
}

variable "create_resource" {
  default = true
}
