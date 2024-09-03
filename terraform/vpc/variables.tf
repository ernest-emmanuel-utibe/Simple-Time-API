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

variable "region" {
  description = "The GCP region where resources will be created."
  type        = string
}

variable "firewall_allow_internal" {
  description = "Allowed internal CIDR ranges."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}
