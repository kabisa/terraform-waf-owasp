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
