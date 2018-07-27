output "spn_objectid" {
  value = "${azurerm_azuread_service_principal.spn.id}"
}

output "spn_passwordguid" {
  value = "${azurerm_azuread_service_principal_password.spn.id}"
}

output "spn_applicationid" {
  value = "${azurerm_azuread_application.spn.application_id}"
}
