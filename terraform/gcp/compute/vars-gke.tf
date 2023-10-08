variable "gkeName" {
  default = "cluster-test"
}

variable "gkeLocation" {
  default = "us-central1-a"
}

variable "minMasterVersion" {
  default = "1.21.14-gke.700"
}

variable "masterIpv4CidrBlock" {
  default = "192.168.48.0/28"
}

variable "networkName" {
  default = "projects/destrinchando-o-gcp-362500/global/networks/vpc-lotech"
}

variable "subnetworkName" {
  default = "projects/destrinchando-o-gcp-362500/regions/us-central1/subnetworks/subnet-gke"
}

variable "clusterSecondaryRangeName" {
  default = "gke-pods"
}

variable "servicesSecondaryRangeName" {
  default = "gke-services"
}

#Variables NodePool

variable "nodePoolName" {
  default = "node-app"
}

variable "nodeVersion" {
  default = "1.21.14-gke.700"
}

variable "nodeCount" {
  default = 1
}

variable "nodePreemptible" {
  default = true
}

variable "machineTypeNode" {
  default = "e2-medium"
}

variable "diskSizeNode" {
  default = 30
}

variable "diskTypeNode" {
  default = "pd-standard"
}