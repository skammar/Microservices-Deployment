provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "microservices" {
  name      = "microservices"
  namespace = "default"
  chart     = "./charts"
}
