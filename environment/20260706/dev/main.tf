
variable "resource_groups" {}
variable "virtual_networks" {}
variable "subnets" {}


module "resource_group" {
  source = "../../../modules/azurerm_resource_group"
  rgs    = var.resource_groups
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../../modules/azurerm_virtual_network"
  vnets      = var.virtual_networks
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../../modules/azurerm_subnet"
  snets      = var.subnets
}
