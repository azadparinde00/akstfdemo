    output "vnet_id" {
       value = module.vnet.vnet_id
     }
     
     output "subnet_id" {
       value = module.vnet.subnet_id
     }
     
     output "acr_login_server" {
       value = module.acr.acr_login_server
     }
     
     output "kube_config" {
       value     = module.aks.kube_config
       sensitive = true
     }
