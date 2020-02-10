variable "name" {
  description = "The name of the log group."
  type        = string
}

variable "environment" {
  description = "The environment that this log group will be in."
  type        = string
}

variable "service" {
  description = "The service that this log group is associated with"
  type        = string
}

variable "retention_period" {
  description = "How long the log group should retain logs (in days)."
  default     = "30"
  type        = string
}

variable "custom_tags" {
  description = "A mapping of custom tags to add to the generated resources."
  type        = map(string)
  default     = {}
}
