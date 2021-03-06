output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_public_route_table_ids" {
  value = module.vpc.public_route_table_ids
}

output "vpc_private_route_table_ids" {
  value = module.vpc.private_route_table_ids
}

output "linux_instance_id" {
  value = module.compute_linux.instance_id
}

output "linux_network" {
  value = {
    private_ip = module.compute_linux.private_ip
    public_ip = module.compute_linux.public_ip
    eips = module.compute_linux.eips
    public_ips_cidr = module.compute_linux.public_ips_cidr
  }
}

output "windows_instance_id" {
  value = module.compute_windows_server.instance_id
}

output "windows_ami_id" {
  value = module.compute_windows_server.ami_id
}

output "windows_network" {
  value = {
    private_ip = module.compute_windows_server.private_ip
    public_ip = module.compute_windows_server.public_ip
    eips = module.compute_windows_server.eips
    public_ips_cidr = module.compute_windows_server.public_ips_cidr
  }
}
