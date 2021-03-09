output "instance_id" {
  value = aws_instance.this.id
}

output "ami_id" {
  value = data.aws_ami.amazon_linux_2.id
}

output "private_dns" {
  value = aws_instance.this.private_dns
}

output "private_ip" {
  value = aws_instance.this.private_ip
}

output "public_dns" {
  value = aws_instance.this.public_dns
}

output "public_ip" {
  value = aws_instance.this.public_ip
}

output "eips" {
  value = flatten([aws_eip.primary_eip.*.public_ip, aws_eip.additional_eips.*.public_ip])
}

output "public_ips_cidr" {
  value = var.eip_enabled ? flatten([
    [
      for ip in aws_eip.primary_eip.*.public_ip : "${ip}/32"
    ],
    [
      for ip in aws_eip.additional_eips.*.public_ip : "${ip}/32"
    ]
  ]) : [ "${aws_instance.this.public_ip}/32" ]
}

