output "deployment_name" {
  description = "The name of the Kubernetes deployment."
  value       = kubernetes_deployment.api_deployment.metadata[0].name
}

output "service_name" {
  description = "The name of the Kubernetes service."
  value       = kubernetes_service.api_service.metadata[0].name
}

output "load_balancer_ip" {
  description = "The external IP of the LoadBalancer."
  value       = kubernetes_service.api_service.status[0].load_balancer.ingress[0].ip
}
