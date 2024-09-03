output "gke_cluster_name" {
  description = "The name of the GKE cluster."
  value       = module.gke.cluster_name
}

output "vpc_network_id" {
  description = "The ID of the VPC network."
  value       = module.vpc.vpc_network_id
}

output "load_balancer_ip_2" {
  description = "The external IP address of the LoadBalancer."
  value       = module.kubernetes.load_balancer_ip
}
