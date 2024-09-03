variable "region" {
  description = "The GCP region where the NAT gateway will be created."
  type        = string
}

variable "network" {
  description = "The VPC network to which the NAT gateway will be attached."
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork to which the NAT gateway will be attached."
  type        = string
}

variable "nat_router_name" {
  description = "The name of the NAT router."
  type        = string
  default     = "nat-router"
}

variable "nat_gateway_name" {
  description = "The name of the NAT gateway."
  type        = string
  default     = "nat-gateway"
}
