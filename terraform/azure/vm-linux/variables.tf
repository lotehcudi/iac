variable "location" {
  default = "eastus"
}

variable "size" {
  default = "Standard_DS1_v2"
}

variable "disk_size_so" {
  default = "30"
}

variable "publisher" {
  default = "Canonical"
}

variable "offer" {
  default = "UbuntuServer"
}

variable "sku" {
  default = "16.04-LTS"
}

variable "version_image" {
  default = "latest"
}

variable "disk_att" {
  default = "40"
}

variable "storage_account_type" {
  default = "Standard_LRS"
}