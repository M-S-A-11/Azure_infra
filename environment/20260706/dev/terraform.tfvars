resource_groups = {
  rg1 = {
    rg_name     = "rg1_dev"
    rg_location = "East US"
  }
  rg2 = {
    rg_name     = "rg2_dev"
    rg_location = "West US"
  }
}

virtual_networks = {
  vnet1 = {
    vnet_name     = "vnet1_dev"
    vnet_location = "East US"
    rg_name       = "rg1_dev"
    address_space = ["10.0.0.0/16"]
  }
  vnet2 = {
    vnet_name     = "vnet2_dev"
    vnet_location = "West US"
    rg_name       = "rg2_dev"
    address_space = ["10.1.0.0/16"]
  }
}

subnets = {
  vnet1 = {
    snet_name     = "snet1_dev"
    vnet_name     = "vnet1_dev"
    rg_name       = "rg1_dev"
    address_space = ["10.0.0.0/24"]
  }
  vnet2 = {
    snet_name     = "snet2_dev"
    vnet_name     = "vnet2_dev"
    rg_name       = "rg2_dev"
    address_space = ["10.1.0.0/24"]
  }
}