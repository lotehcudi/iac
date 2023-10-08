resource "google_compute_network" "vpc" {
   project = var.projectId
   name = var.vpcName
   mtu = 1460
   auto_create_subnetworks = false
   routing_mode = "GLOBAL"
}
