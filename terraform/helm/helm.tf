data "helm_repository" "stable" {
  name = "stable"
  url  = "https://kubernetes-charts.storage.googleapis.com"
}

resource "helm_release" "example" {
  name       = "${var.project_name}-jenkins"
  repository = data.helm_repository.stable.metadata[0].name
  chart      = "stable/jenkins"
  version    = var.jenkins_image_version
}