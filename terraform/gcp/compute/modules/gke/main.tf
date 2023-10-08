resource "google_container_cluster" "gke-lotech" {
  name = var.gkeName
  location = var.gkeLocation

  release_channel {
    channel = "STABLE"
  }

  min_master_version = var.minMasterVersion
  remove_default_node_pool = true
  initial_node_count = 1

  private_cluster_config {
    enable_private_endpoint = false
    enable_private_nodes = true
    master_ipv4_cidr_block = var.masterIpv4CidrBlock
  }

  network = var.networkName
  subnetwork = var.subnetworkName


  networking_mode       = "VPC_NATIVE"
  enable_shielded_nodes = true

  ip_allocation_policy {
    cluster_secondary_range_name = var.clusterSecondaryRangeName
    services_secondary_range_name = var.servicesSecondaryRangeName
  }

}

resource "google_container_node_pool" "node-app" {
  provider = google
  name = var.nodePoolName
  version = var.nodeVersion
  cluster = google_container_cluster.gke-lotech.name
  node_count = var.nodeCount
  location = var.gkeLocation

  node_config {
    preemptible = var.nodePreemptible
    machine_type = var.machineTypeNode
    disk_size_gb = var.diskSizeNode
    disk_type = var.diskTypeNode
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"
    ]

  }

}
