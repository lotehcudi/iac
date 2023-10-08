resource "google_compute_subnetwork" "subnet-gke" {
  name = var.gkeSubnetName
  ip_cidr_range = var.gkeIpCidrRange
  region = var.region
  network = var.gkeNetwork
  private_ip_google_access = true

   secondary_ip_range {
      range_name = var.gkeSecondaryIpRangeNamePods
      ip_cidr_range = var.gkeIpCidrRangePods
   }

   secondary_ip_range {
      range_name = var.gkeSecondaryIpRangeNameServices
      ip_cidr_range = var.gkeIpCidrRangeServices
   }
}