output "global_accelerator_id" {
  value = aws_globalaccelerator_accelerator.accelerator.id
}

output "global_accelerator_ip_sets" {
  value = aws_globalaccelerator_accelerator.accelerator.ip_sets
}

output "global_accelerator_dns_name" {
  value = aws_globalaccelerator_accelerator.accelerator.dns_name
}

output "route53_healthcheck_cidr_blocks" {
  value = data.aws_ip_ranges.route53_healthcheck.cidr_blocks
}
