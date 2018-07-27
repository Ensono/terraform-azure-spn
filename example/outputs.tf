output "spn_objectid" {
  value = "${module.terraform-azure-spn.spn_objectid}"
}

output "spn_passwordguid" {
  value = "${module.terraform-azure-spn.spn_passwordguid}"
}

output "spn_applicationid" {
  value = "${module.terraform-azure-spn.spn_applicationid}"
}
