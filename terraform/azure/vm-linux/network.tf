resource "azurerm_virtual_network" "nettest" {
  name                = "network-test"
  address_space       = ["192.168.1.0/24"]
  location            = var.location
  resource_group_name = azurerm_resource_group.rgtest.name
}

resource "azurerm_subnet" "subtest" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.rgtest.name
  virtual_network_name = azurerm_virtual_network.nettest.name
  address_prefixes     = ["192.168.1.0/24"]
}

resource "azurerm_network_interface" "nictest" {
  name                = "nictest"
  location            = var.location
  resource_group_name = azurerm_resource_group.rgtest.name


  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subtest.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.piptest.id
  }

}

resource "azurerm_public_ip" "piptest" {
  name                = "piptest"
  resource_group_name = azurerm_resource_group.rgtest.name
  location            = var.location
  allocation_method   = "Static"
}