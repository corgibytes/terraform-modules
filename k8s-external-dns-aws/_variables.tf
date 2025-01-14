variable "md_metadata" {
  type        = any
  description = "md_metadata object"
}

variable "kubernetes_cluster" {
  type        = any
  description = "A kubernetes_cluster artifact"
}

variable "release" {
  description = "Release name"
  type        = string
}

variable "namespace" {
  description = "Kubernetes namespace"
  type        = string
}

variable "route53_hosted_zones" {
  description = "Map of AWS Route53 zones to domain names"
  type        = map(string)
  default     = {}
}

variable "helm_additional_values" {
  type        = any
  description = "a map of helm variables (key) to their values, used for setting anything in values.yaml"
  default     = {}
}

