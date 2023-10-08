variable "gkeName" {
  type = string
}

variable "gkeLocation" {
  type = string
}

variable "minMasterVersion" {
  type = string
}

variable "masterIpv4CidrBlock" {
  type = string
}

variable "networkName" {
  type = string
}

variable "subnetworkName" {
 type = string 
}

variable "clusterSecondaryRangeName" {
  type = string
}

variable "servicesSecondaryRangeName" {
  type = string
}

variable "nodePoolName" {
  type = string
}

variable "nodeVersion" {
  type = string
}

variable "nodeCount" {
  type = string
}

variable "nodePreemptible" {
  type = bool
}

variable "machineTypeNode" {
  type = string
}

variable "diskSizeNode" {
  type = number
}

variable "diskTypeNode" {
  type = string
}