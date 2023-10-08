resource "azurerm_linux_virtual_machine" "vmlinux" {
  name                  = "vm-linux"
  resource_group_name   = azurerm_resource_group.rgtest.name
  location              = var.location
  size                  = var.size
  admin_username        = "ubuntuserver"
  network_interface_ids = [azurerm_network_interface.nictest.id]


  admin_ssh_key {
    username   = "ubuntuserver"
    public_key = file("/home/neto/cursos/terraform/azure/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = var.disk_size_so
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.version_image
  }
}