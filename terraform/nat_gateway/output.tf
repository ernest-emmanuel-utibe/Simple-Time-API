output "nat_gateway_ip" {
  description = "The external IP address of the NAT gateway."
  value       = google_compute_router_nat.nat_gateway.nat_ip_allocate_option
}

output "nat_router_name" {
  description = "The name of the NAT router."
  value       = google_compute_router.nat_router.name
}
