resource "azurerm_storage_container" "containerlotech" {
  name                  = "containerlotech"
  storage_account_name  = azurerm_storage_account.storagelotech.name
  container_access_type = "blob"
}

resource "azurerm_storage_blob" "bloblotech" {
  name                   = "images"
  storage_account_name   = azurerm_storage_account.storagelotech.name
  storage_container_name = azurerm_storage_container.containerlotech.name
  type                   = "Block"
  access_tier            = "Hot"
}