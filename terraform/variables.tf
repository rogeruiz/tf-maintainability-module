variable "labels_main" {
  description = "The labels to give to names and tags."
  type = object({
    namespace  = string
    stage      = string
    name       = string
    attributes = list(string)
    delimiter  = string
    tags       = map(string)
  })

  validation {
    condition     = length(var.labels_main.delimiter) == 1 && can(regex("^[-_]$", var.labels_main.delimiter))
    error_message = "Delimiter must be a single character. eg. \"_\", \"-\"."
  }

  validation {
    condition     = length(var.labels_main.attributes) >= 1
    error_message = "Attributes must contain at least one string."
  }
}

variable "labels_aux" {
  description = "The labels to give to names and tags."
  type = object({
    namespace  = string
    stage      = string
    name       = string
    attributes = list(string)
    delimiter  = string
    tags       = map(string)
  })

  validation {
    condition     = length(var.labels_aux.delimiter) == 1 && can(regex("^[-_]$", var.labels_aux.delimiter))
    error_message = "Delimiter must be a single character. eg. \"_\", \"-\"."
  }

  validation {
    condition     = length(var.labels_aux.attributes) >= 1
    error_message = "Attributes must contain at least one string."
  }
}
