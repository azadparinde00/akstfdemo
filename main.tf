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
     
     resource "azurerm_resource_group" "main" {
       name     = var.resource_group_name
       location = var.location
     }
     
     module "vnet" {
       source              = "./Vnet"
       resource_group_name = azurerm_resource_group.main.name
       location            = azurerm_resource_group.main.location
     }
     
     module "acr" {
       source              = "./acr"
       resource_group_name = azurerm_resource_group.main.name
       location            = azurerm_resource_group.main.location
     }
     
     module "aks" {
       source              = "./aks"
       resource_group_name = azurerm_resource_group.main.name
       location            = azurerm_resource_group.main.location
       subnet_id           = module.vnet.subnet_id
       acr_login_server    = module.acr.acr_login_server
     }


// done 