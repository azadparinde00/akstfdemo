variable "resource_group_name" {
       type = string
     }
     variable "location" {
       type = string
     }
     variable "aks_name" {
       type    = string
       default = "terraform-aks"
     }
     variable "dns_prefix" {
      type    = string
       default = "terraformaks"
     }
     variable "node_count" {
       type    = number
       default = 1
     }
     variable "subnet_id" {
       type = string
     }
     variable "acr_login_server" {
       type = string
}