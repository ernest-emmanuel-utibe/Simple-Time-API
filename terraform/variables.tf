# variable "project_id" {
#   description = "The GCP project ID"
#   type        = string
# }

# variable "region" {
#   description = "The GCP region"
#   type        = string
# }

# # Add other variables here


variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "region" {
  description = "The GCP region where resources will be created."
  type        = string
}

variable "gke_cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
  default     = "my-gke-cluster"
}

variable "vpc_name" {
  description = "The name of the VPC network."
  type        = string
  default     = "my-vpc"
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
  default     = "my-subnet"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
  default     = "10.0.0.0/24"
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
