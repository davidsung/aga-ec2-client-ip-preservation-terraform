module "earth" {
  source = "./modules/planet"

  providers = {
    aws = aws.earth
  }

  name                    = "earth"
  vpc_cidr                = var.earth_vpc_cidr
  instance_type           = var.instance_type
  network_interface_count = var.network_interface_count
  key_name                = var.key_name
  icmp_whitelist_cidrs    = [var.mars_vpc_cidr, var.venus_vpc_cidr]
  rdp_whitelist_cidrs     = [var.rdp_whitelist_cidr]

  tags = {
    Environment = var.environment
  }
}

module "mars" {
  source = "./modules/planet"

  providers = {
    aws = aws.mars
  }

  name                    = "mars"
  vpc_cidr                = var.mars_vpc_cidr
  instance_type           = var.instance_type
  network_interface_count = var.network_interface_count
  key_name                = var.key_name
  icmp_whitelist_cidrs    = [var.earth_vpc_cidr, var.venus_vpc_cidr]
  rdp_whitelist_cidrs     = [var.rdp_whitelist_cidr]

  tags = {
    Environment = var.environment
  }
}

module "venus" {
  source = "./modules/planet"

  providers = {
    aws = aws.venus
  }

  name                    = "venus"
  vpc_cidr                = var.venus_vpc_cidr
  instance_type           = var.instance_type
  network_interface_count = var.network_interface_count
  key_name                = var.key_name
  icmp_whitelist_cidrs    = [var.earth_vpc_cidr, var.mars_vpc_cidr]
  rdp_whitelist_cidrs     = [var.rdp_whitelist_cidr]

  tags = {
    Environment = var.environment
  }
}

module "earth_aga" {
  source = "./modules/global-accelerator"

  providers = {
    aws = aws.earth
  }

  app_port = var.app_port
  protocol = var.app_protocol
  client_ip_preservation_enabled = var.client_ip_preservation_enabled
  endpoint_id = module.earth.linux_instance_id
}