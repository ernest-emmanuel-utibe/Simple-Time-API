resource "google_compute_router" "nat_router" {
  name    = var.nat_router_name
  network = var.network
  region  = var.region
}

resource "google_compute_router_nat" "nat_gateway" {
  name                       = var.nat_gateway_name
  router                     = google_compute_router.nat_router.name
  region                     = var.region
  nat_ip_allocate_option     = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}
