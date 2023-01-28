locals {
  base_identity = {
    location            = var.location
    resource_group_name = var.resource_group_name
    kubernetes          = {}
  }

  azure_identity = local.is_kubernetes ? merge(local.base_identity, {
    kubernetes = {
      namespace            = var.kubernetes.namespace
      service_account_name = var.name
      oidc_issuer_url      = var.kubernetes.oidc_issuer_url
    }
  }) : local.base_identity
}
