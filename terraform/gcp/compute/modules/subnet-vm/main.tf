resource "google_compute_subnetwork" "subnet-machine" {
  name = var.subnetVmName
  ip_cidr_range = var.ipCidrRangeVm
  region = var.subnetVmRegion
  network = var.networkSubnetVm
  private_ip_google_access = true
}