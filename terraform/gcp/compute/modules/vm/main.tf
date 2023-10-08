resource "google_compute_disk" "disk-data" {
   count = var.diskVmCount
   name = "disk-${count.index + 1}"
   type = var.diskVmType
   size = var.diskVmSize
   zone = var.diskVmZone
}

resource "google_compute_attached_disk" "disk-data" {
  count = var.diskVmCount
  disk = element(google_compute_disk.disk-data.*.id, count.index)
  instance = element(google_compute_instance.machine.*.name, count.index)
  device_name = "disk-data"
  zone = var.diskVmZone
}

resource "google_compute_instance" "machine" {
  count = var.vmCount
  name = "vm-${count.index + 1}"
  machine_type = var.vmMachineType
  zone = var.vmZone
  allow_stopping_for_update = false

  boot_disk {
    initialize_params {
        image = var.vmImageBoot
    }
  }

lifecycle {
  ignore_changes = [attached_disk]
}

network_interface {
  network = var.vmNetwork
  subnetwork = var.vmSubnetwork
}

metadata = {
  "ssh-keys" = "lotech:credentials/key.pub"
}

}