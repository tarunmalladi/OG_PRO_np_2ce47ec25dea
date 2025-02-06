locals {
  rg_name = "${var.Environment}-${terraform.workspace}-${var.resource_group_name}"
  vnet    = "${var.Environment}-${terraform.workspace}-${var.virtual_network_name}"
  snet    = "${var.Environment}-${terraform.workspace}-${var.subnet_name}"
}