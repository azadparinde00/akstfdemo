terraform {
     required_providers {
         azurerm = {
           source  = "hashicorp/azurerm"
           version = "~> 3.0"
         }
       }
     }
     
     provider "azurerm" {
       features {}
     }
     
     module "vnet" {
       source              = "./vnet"
       resource_group_name = var.resource_group_name
       location            = var.location
     }
     
     module "acr" {
       source              = "./acr"
       resource_group_name = var.resource_group_name
       location            = var.location
     }
     
     module "aks" {
       source              = "./aks"
       resource_group_name = var.resource_group_name
       location            = var.location
       subnet_id           = module.vnet.subnet_id
       acr_login_server    = module.acr.acr_login_server
     }
