 resource "azurerm_virtual_network" "cmdockerlab1" {
   name                = "acctvn"
   address_space       = ["10.0.0.0/16"]
   location            = azurerm_resource_group.cmdockerlab1.location
   resource_group_name = azurerm_resource_group.cmdockerlab1.name
 }

 resource "azurerm_subnet" "cmdockerlab1" {
   name                 = "acctsub"
   resource_group_name  = azurerm_resource_group.cmdockerlab1.name
   virtual_network_name = azurerm_virtual_network.cmdockerlab1.name
   address_prefixes     = ["10.0.2.0/24"]
 }

 resource "azurerm_public_ip" "cmdockerlab1" {
   name                         = "publicIPForLB"
   location                     = azurerm_resource_group.cmdockerlab1.location
   resource_group_name          = azurerm_resource_group.cmdockerlab1.name
   allocation_method            = "Static"
 }