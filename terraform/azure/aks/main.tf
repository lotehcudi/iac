resource "azurerm_kubernetes_cluster" "cluster_test" {
  name                = "k8s-${var.name}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rgtest.name
  dns_prefix          = "k8s-${var.name}"
  kubernetes_version  = var.version_k8s

  default_node_pool {
    name = var.name
    #node_count      = var.node_count
    vm_size             = var.vm_size_node
    os_disk_size_gb     = var.disk_size_node
    enable_auto_scaling = true
    min_count           = var.min_count_node
    max_count           = var.max_count_node
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    "env" = "test"
  }
}