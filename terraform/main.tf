module "label_main" {
  source  = "cloudposse/label/terraform"
  version = "0.7.0"

  namespace  = var.labels_main.namespace
  stage      = var.labels_main.stage
  name       = var.labels_main.name
  attributes = var.labels_main.attributes
  delimiter  = var.labels_main.delimiter
  tags       = var.labels_main.tags
}

module "label_aux" {
  source  = "cloudposse/label/terraform"
  version = "0.7.0"

  namespace  = var.labels_aux.namespace
  stage      = var.labels_aux.stage
  name       = var.labels_aux.name
  attributes = var.labels_aux.attributes
  delimiter  = var.labels_aux.delimiter
  tags       = var.labels_aux.tags
}
