variable "resource_group_name" {
      description = "Name of the resource group"
       type        = string
       default     = "terraform-lab-rg"
     }
     
     variable "location" {
       description = "Azure region"
       type        = string
       default     = "East US"
}