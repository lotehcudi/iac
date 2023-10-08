terraform {
  backend "gcs" {
    bucket      = "iac-lotech"
    credentials = "credentials/destrinchando-o-gcp-362500-d6910bed2f1d.json"
    prefix      = "terraform/gke-test/state"
  }
}

provider "google" {
  credentials = file("credentials/destrinchando-o-gcp-362500-d6910bed2f1d.json")
  project     = var.projectId
  region      = var.region
}

provider "google-beta" {
  credentials = file("credentials/destrinchando-o-gcp-362500-d6910bed2f1d.json")
  project     = var.projectId
  region      = var.region
}