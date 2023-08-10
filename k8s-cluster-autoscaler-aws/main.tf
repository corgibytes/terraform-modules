module "cluster-autoscaler" {
  source = "../k8s-cluster-autoscaler"

  kubernetes_cluster     = var.kubernetes_cluster
  md_metadata            = var.md_metadata
  release                = var.release
  namespace              = var.namespace
  helm_additional_values = merge(local.helm_additional_values, var.helm_additional_values)
}
