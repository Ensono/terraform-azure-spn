output "spn_objectid" {
  value = "${var.create_resource ? azurerm_azuread_service_principal.spn.0.id : 0 }"
}

output "spn_passwordguid" {
  value = "${var.create_resource ? azurerm_azuread_service_principal_password.spn.0.id : 0 }"
}

output "spn_applicationid" {
  value = "${var.create_resource ? azurerm_azuread_application.spn.0.application_id : 0 }"
}
