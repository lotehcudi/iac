variable "location" {
  default = "eastus"
}

variable "name" {
  default = "test"
}

variable "version_k8s" {
  default = "1.24.0"
}

variable "node_count" {
  default = "1"
}

variable "vm_size_node" {
  default = "Standard_D2_v2"
}

variable "disk_size_node" {
  default = "30"
}

variable "min_count_node" {
  default = "1"
}

variable "max_count_node" {
  default = "6"
}