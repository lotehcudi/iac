variable "gkeIpCidrRange" {
  default = "192.168.0.0/20"
}

variable "gkeSecondaryIpRangeNamePods" {
  default = "gke-pods"
}

variable "gkeSecondaryIpRangeNameServices" {
  default = "gke-services"
}

variable "gkeIpCidrRangePods" {
  default = "192.168.16.0/20"
}

variable "gkeIpCidrRangeServices" {
  default = "192.168.32.0/20"
}

variable "gkeSubnetName" {
  default = "subnet-gke"
}

variable "gkeNetwork" {
  default = "projects/destrinchando-o-gcp-362500/global/networks/vpc-lotech"
}