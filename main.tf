##################################################
##  AKS SPN
##################################################
provider "azuread" {
  version = "=0.1.0"
}

resource "random_string" "spn_password" {
  count   = "${var.create_resource ? 1 : 0 }"
  length  = 16
  special = true
}

resource "azuread_application" "spn" {
  count    = "${var.create_resource ? 1 : 0 }"
  name     = "${var.spn_name}"
  homepage = "${var.spn_url}"
}

resource "azuread_service_principal" "spn" {
  count          = "${var.create_resource ? 1 : 0 }"
  application_id = "${azuread_application.spn[0].application_id}"
}

resource "azuread_service_principal_password" "spn" {
  count                = "${var.create_resource ? 1 : 0 }"
  service_principal_id = "${azuread_service_principal.spn[0].id}"
  value                = "${var.generate_password ? random_string.spn_password[0].result : var.spn_password}"
  end_date             = "${var.spn_expiry}"
}
