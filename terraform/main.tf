provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source      = "./vpc"
  vpc_name    = var.vpc_name
  subnet_name = var.subnet_name
  subnet_cidr = var.subnet_cidr
  region      = var.region
}

module "gke" {
  source            = "./gke"
  cluster_name      = var.gke_cluster_name
  region            = var.region
  network           = module.vpc.vpc_network_id
  subnetwork        = module.vpc.subnet_id
  initial_node_count = var.replicas
}

module "nat_gateway" {
  source          = "./nat_gateway"
  region          = var.region
  network         = module.vpc.vpc_network_id
  subnetwork      = module.vpc.subnet_id
  nat_router_name = "nat-router"
  nat_gateway_name = "nat-gateway"
}

module "kubernetes" {
  source           = "./kubernetes"
  namespace        = "default"
  image            = var.image
  replicas         = var.replicas
  service_name     = "time-api-service"
  service_port     = 80
  container_port   = 8080
  load_balancer_ip = google_compute_address.lb_ip.address
}

# Create a static IP address for the LoadBalancer
resource "google_compute_address" "lb_ip" {
  name   = "lb-ip"
  region = var.region
}

output "load_balancer_ip_1" {
  value = google_compute_address.lb_ip.address
}