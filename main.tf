##################################################
##  AKS SPN
##################################################

resource "random_string" "spn_password" {
  length  = 16
  special = true
}

resource "azurerm_azuread_application" "spn" {
  name     = "${var.spn_name}"
  homepage = "${var.app_url}"
}

resource "azurerm_azuread_service_principal" "spn" {
  application_id = "${azurerm_azuread_application.spn.application_id}"
}

resource "azurerm_azuread_service_principal_password" "spn" {
  service_principal_id = "${azurerm_azuread_service_principal.spn.id}"
  value                = "${var.generate_password ? random_string.spn_password.result : var.spn_password}"
  end_date             = "${var.spn_enddate}"
}
