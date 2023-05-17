output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "Region" {
  value = azurerm_resource_group.rg.location
}

output "azurerm_public_ip" {
  value = azurerm_public_ip.cmdockerlab1.ip_address 
}

output "1st_VM" {
  value = azurerm_virtual_machine.cmdockerlab1[0].name
}

output "2nd_VM" {
  value = azurerm_virtual_machine.cmdockerlab1[1].name
}

output "private_ip_1st_VM" {
  value = azurerm_network_interface.cmdockerlab1[0].private_ip_address
}

output "private_ip_2nd_VM" {
  value = azurerm_network_interface.cmdockerlab1[1].private_ip_address
}
