terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("../mm.json")

  project = var.project_name
  region  = var.region_name
  #zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = var.vpc_name
}
