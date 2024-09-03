variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
  default     = "my-gke-cluster"
}

variable "region" {
  description = "The GCP region where the GKE cluster will be created."
  type        = string
}

variable "initial_node_count" {
  description = "The initial number of nodes in the GKE cluster."
  type        = number
  default     = 1
}

variable "machine_type" {
  description = "The machine type to use for the GKE nodes."
  type        = string
  default     = "e2-medium"
}

variable "network" {
  description = "The VPC network to which the GKE cluster will be attached."
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork to which the GKE cluster will be attached."
  type        = string
}
