variable "waf_prefix" {}

variable "blacklisted_ips" {
  type = list(any)
}

variable "admin_remote_ipset" {
  type = list(any)
}

variable "kinesis_arn" {
  type    = string
  default = ""
}

variable "dry_run" {
  type    = bool
  default = false
}

locals {
  rules_action = var.dry_run ? "COUNT" : "BLOCK"
}
