output "spn_objectid" {
  value = "${azurerm_azuread_service_principal.spn.*.id ? element(azurerm_azuread_service_principal.spn.*.id,0) : "" }"
}

output "spn_passwordguid" {
  value = "${azurerm_azuread_service_principal_password.spn.*.id ? element(azurerm_azuread_service_principal_password.spn.*.id,0) : "" }"
}

output "spn_applicationid" {
  value = "${azurerm_azuread_application.spn.*.application_id ? element(azurerm_azuread_application.spn.*.application_id,0) : "" }"
}
