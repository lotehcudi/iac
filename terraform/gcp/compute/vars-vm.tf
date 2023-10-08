variable "diskVmCount" {
  default = 2
}

variable "diskVmType" {
  default = "pd-ssd"
}

variable "diskVmZone" {
  default = "us-central1-a"
}

variable "diskVmSize" {
  default = 30
}

variable "vmCount" {
  default = 2
}

variable "vmName" {
  default = ["vm-1", "vm-2"]
}

variable "vmMachineType" {
  default = "e2-medium"
}

variable "vmZone" {
  default = "us-central1-a"
}

variable "vmImageBoot" {
  default = "centos-stream-8"
}

variable "vmNetwork" {
  default = "projects/destrinchando-o-gcp-362500/global/networks/vpc-lotech"
}

variable "vmSubnetwork" {
  default = "projects/destrinchando-o-gcp-362500/regions/us-central1/subnetworks/subnet-vm"
}