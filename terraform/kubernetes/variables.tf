variable "namespace" {
  description = "The namespace in which the Kubernetes resources will be deployed."
  type        = string
  default     = "default"
}

variable "image" {
  description = "The Docker image for the API."
  type        = string
}

variable "replicas" {
  description = "The number of replicas for the Kubernetes deployment."
  type        = number
  default     = 2
}

variable "service_name" {
  description = "The name of the Kubernetes service."
  type        = string
  default     = "time-api-service"
}

variable "service_port" {
  description = "The port on which the service will expose the API."
  type        = number
  default     = 80
}

variable "container_port" {
  description = "The port on which the container listens."
  type        = number
  default     = 8080
}

variable "load_balancer_ip" {
  description = "The external IP address for the LoadBalancer."
  type        = string
}
