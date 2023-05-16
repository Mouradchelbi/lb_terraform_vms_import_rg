 resource "azurerm_lb" "cmdockerlab1" {
   name                = "cmterraLB"
   location            = azurerm_resource_group.cmdockerlab1.location
   resource_group_name = azurerm_resource_group.cmdockerlab1.name

   frontend_ip_configuration {
     name                 = "publicIPAddress"
     public_ip_address_id = azurerm_public_ip.cmdockerlab1.id
   }
 }

 resource "azurerm_lb_backend_address_pool" "cmdockerlab1" {
   loadbalancer_id     = azurerm_lb.cmdockerlab1.id
   name                = "BackEndAddressPool"
 }

 resource "azurerm_network_interface" "cmdockerlab1" {
   count               = 2
   name                = "acctni${count.index}"
   location            = azurerm_resource_group.cmdockerlab1.location
   resource_group_name = azurerm_resource_group.cmdockerlab1.name

ip_configuration {
     name                          = "testConfiguration"
     subnet_id                     = azurerm_subnet.cmdockerlab1.id
     private_ip_address_allocation = "dynamic"
   }
 }