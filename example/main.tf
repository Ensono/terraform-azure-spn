provider "azurerm" {}

resource "random_pet" "name" {
  length    = 2
  separator = ""
  prefix    = "aks"
}

module "terraform-azure-spn" {
  source     = "git::https://github.com/amido/terraform-azure-spn.git"
  spn_expiry = "2019-01-01T01:02:03Z"
  spn_name   = "${random_pet.name.id}"
}
