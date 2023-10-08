resource "azurerm_storage_account" "storagelotech" {
  name                     = "storagelotech"
  resource_group_name      = azurerm_resource_group.rgtest.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  account_kind             = "StorageV2"

  tags = {
    "env" = "terraform"
  }
}