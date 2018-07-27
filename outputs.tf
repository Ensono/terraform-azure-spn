output "spn_objectid" {
  value = "${var.create_resource ? element(azurerm_azuread_service_principal.spn.*.id,0) : "" }"
}

output "spn_passwordguid" {
  value = "${var.create_resource ? element(azurerm_azuread_service_principal_password.spn.*.id,0) : "" }"
}

output "spn_applicationid" {
  value = "${var.create_resource ? element(azurerm_azuread_application.spn.*.application_id,0) : "" }"
}
