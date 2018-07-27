output "spn_objectid" {
  value = "${var.create_akscluster ? azurerm_azuread_service_principal.spn.id : ""}"
}

output "spn_passwordguid" {
  value = "${var.create_akscluster ? azurerm_azuread_service_principal_password.spn.id : "" }"
}

output "spn_applicationid" {
  value = "${var.create_akscluster ? azurerm_azuread_application.spn.application_id : "" }"
}
