output "kubeconfig" {
  description = "Kubeconfig file to access the GKE cluster."
  value       = google_container_cluster.primary.endpoint
}

output "cluster_name" {
  description = "The name of the GKE cluster."
  value       = google_container_cluster.primary.name
}

output "cluster_endpoint" {
  description = "The endpoint of the GKE cluster."
  value       = google_container_cluster.primary.endpoint
}

output "cluster_ca_certificate" {
  description = "The base64-encoded public CA certificate of the cluster."
  value       = google_container_cluster.primary.master_auth.0.cluster_ca_certificate
}
