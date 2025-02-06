variable "subscription_id" {
  description = "The Azure Subscription ID"
}

variable "client_id" {
  description = "The Azure Client ID"
}

variable "client_secret" {
  description = "The Azure Client Secret"
}

variable "tenant_id" {
  description = "The Azure Tenant ID"
}

variable "tags" {

}
variable "Environment" {
  description = "environment-name"
  type        = string
  default     = "terraform"
}
variable "resource_group_name" {
  description = "rg-name"
  type        = string
  default     = "tarun-rg"
}
variable "virtual_network_name" {
  description = "vnet-name"
  type        = string
  default     = "tarun-vnet"
}
variable "resource_group_location" {
  description = "location"
  type        = string
  default     = "south india"
}
variable "subnet_name" {
  description = "subnet-name"
  type        = string
  default     = "tarun-subnet"
}