    variable "resource_group_name" {
       type    = string
     }
     variable "location" {
       type    = string
     }
     variable "vnet_name" {
       type    = string
       default = "terraform-vnet"
     }
     variable "address_space" {
       type    = list(string)
       default = ["10.1.0.0/16"]
     }
     variable "subnet_name" {
       type    = string
       default = "terraform-subnet"
     }
     variable "subnet_prefixes" {
       type    = list(string)
       default = ["10.1.1.0/24"]
     }
