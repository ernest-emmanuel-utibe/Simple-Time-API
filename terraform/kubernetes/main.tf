provider "kubernetes" {
  host                   = module.gke.cluster_endpoint
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = module.gke.cluster_ca_certificate
}

resource "kubernetes_namespace" "namespace" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_deployment" "api_deployment" {
  metadata {
    name      = "time-api"
    namespace = kubernetes_namespace.namespace.metadata[0].name
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = "time-api"
      }
    }

    template {
      metadata {
        labels = {
          app = "time-api"
        }
      }

      spec {
        container {
          name  = "time-api"
          image = var.image

          ports {
            container_port = var.container_port
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "api_service" {
  metadata {
    name      = var.service_name
    namespace = kubernetes_namespace.namespace.metadata[0].name
  }

  spec {
    selector = {
      app = "time-api"
    }

    type = "LoadBalancer"

    port {
      port        = var.service_port
      target_port = var.container_port
    }
  }
}

resource "kubernetes_ingress" "api_ingress" {
  metadata {
    name      = "time-api-ingress"
    namespace = kubernetes_namespace.namespace.metadata[0].name
  }

  spec {
    backend {
      service_name = kubernetes_service.api_service.metadata[0].name
      service_port = var.service_port
    }
  }
}
