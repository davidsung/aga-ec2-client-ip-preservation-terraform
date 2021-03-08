variable "name" {
  type = string
  default = "global-accelerator"
  description = "Name of the Global Accelerator"
}

variable "protocol" {
  type = string
  default = "TCP"
  description = "Protocol of the Global Accelerator"
}

variable "app_port" {
  type = number
  default = 80
  description = "Application Port"
}

variable "client_ip_preservation_enabled" {
  type = bool
  default = false
  description = "Client IP Preservation"
}

variable "endpoint_id" {
  type = string
  default = null
  description = "Endpoint ID"
}

variable "tags" {
  type = map(string)
  default = {}
}
