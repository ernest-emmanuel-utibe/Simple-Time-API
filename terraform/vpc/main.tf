# resource "google_compute_network" "vpc_network" {
#   name                    = var.vpc_name
#   auto_create_subnetworks = false
# }

# resource "google_compute_subnetwork" "subnet" {
#   name          = var.subnet_name
#   network       = google_compute_network.vpc_network.name
#   ip_cidr_range = var.subnet_cidr
#   region        = var.region
# }

# resource "google_compute_firewall" "allow_internal" {
#   name    = "allow-internal"
#   network = google_compute_network.vpc_network.name

#   allow {
#     protocol = "all"
#     ports    = []
#   }

#   source_ranges = ["10.0.0.0/16"]
# }


resource "google_compute_network" "vpc_network" {
  name = var.vpc_name
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_firewall" "allow-internal" {
  name    = "allow-internal"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }

  source_ranges = var.firewall_allow_internal
}
