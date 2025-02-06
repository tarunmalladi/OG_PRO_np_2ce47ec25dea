terraform {
  required_version = "<=1.10.5"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.17.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "storage-rg"
    storage_account_name = "storageaccount111000"
    container_name = "strcontainer1212"
    key = "terraform1.tfstate"
  }
}
provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "example" {
  name     = local.rg_name
  location = var.resource_group_location
  tags     = var.tags
}
resource "azurerm_virtual_network" "myvnet" {
  address_space = ["10.0.0.0/16"] # Define the IP address range
  # location            = azurerm_resource_group.example.location
  name                = local.vnet
  resource_group_name = local.rg_name
  location            = azurerm_resource_group.example.location
  tags                = var.tags
  depends_on          = [azurerm_resource_group.example]
}
resource "azurerm_subnet" "mysub" {
  name                 = local.snet
  address_prefixes     = ["10.0.2.0/24"]
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
  depends_on           = [azurerm_virtual_network.myvnet]
  lifecycle {
    create_before_destroy = true
  }
}
