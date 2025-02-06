output "resource_group_name" {
  description = "output rg-name"
  value       = azurerm_resource_group.example.name
}
output "virtual_network_name" {
  description = "output vnet-name"
  value       = azurerm_virtual_network.myvnet.name
}
output "resource_group_location" {
  description = "output locatoin-rg"
  value       = azurerm_resource_group.example.location
}
output "azurerm_resource_group_id" {
  description = "output rg-id"
  value       = azurerm_resource_group.example.id
}