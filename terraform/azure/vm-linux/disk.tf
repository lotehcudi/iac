resource "azurerm_managed_disk" "disk" {
  name                 = "disk-1"
  location             = var.location
  resource_group_name  = azurerm_resource_group.rgtest.name
  storage_account_type = var.storage_account_type
  create_option        = "Empty"
  disk_size_gb         = var.disk_att
}

resource "azurerm_virtual_machine_data_disk_attachment" "attdisk" {
  managed_disk_id    = azurerm_managed_disk.disk.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmlinux.id
  lun                = "1"
  caching            = "ReadWrite"
}