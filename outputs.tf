output "earth_region" {
  value = var.earth_region
}

output "mars_region" {
  value = var.mars_region
}

output "venus_region" {
  value = var.venus_region
}

output "earth_vpc_id" {
  value = module.earth.vpc_id
}

output "mars_vpc_id" {
  value = module.mars.vpc_id
}

output "venus_vpc_id" {
  value = module.venus.vpc_id
}

output "earth_linux_instance_id" {
  value = module.earth.linux_instance_id
}

output "earth_linux_network" {
  value = module.earth.linux_network
}

output "earth_windows_instance_id" {
  value = module.earth.windows_instance_id
}

output "earth_windows_network" {
  value = module.earth.windows_network
}

output "mars_linux_instance_id" {
  value = module.mars.linux_instance_id
}

output "mars_linux_network" {
  value = module.mars.linux_network
}

output "mars_windows_instance_id" {
  value = module.mars.windows_instance_id
}

output "mars_windows_network" {
  value = module.mars.windows_network
}

output "venus_linux_instance_id" {
  value = module.venus.linux_instance_id
}

output "venus_linux_network" {
  value = module.venus.linux_network
}

output "venus_windows_instance_id" {
  value = module.venus.windows_instance_id
}

output "venus_windows_network" {
  value = module.venus.windows_network
}

output "earth_aga_id" {
  value = module.earth_aga.global_accelerator_id
}

output "earth_aga_dns_name" {
  value = module.earth_aga.global_accelerator_dns_name
}

output "earth_aga_ip_sets" {
  value = module.earth_aga.global_accelerator_ip_sets
}
