output "spn_objectid" {
  # value = "${azurerm_azuread_service_principal.spn.*.id}"
  value = "${element(concat(azurerm_azuread_service_principal.spn.0.id, list("")), 0)}"
}

output "spn_passwordguid" {
  value = "${element(concat(azurerm_azuread_service_principal_password.spn.0.id, list("")), 0)}"

  #  value = "${azurerm_azuread_service_principal_password.spn.*.id}"
}

output "spn_applicationid" {
  value = "${element(concat(azurerm_azuread_application.spn.0.application_id, list("")), 0)}"

  # value = "${azurerm_azuread_application.spn.*.application_id}"
}
