resource "aws_globalaccelerator_accelerator" "accelerator" {
  name = var.name
  tags = var.tags
}

resource "aws_globalaccelerator_listener" "listener" {
  accelerator_arn = aws_globalaccelerator_accelerator.accelerator.id
  protocol = var.protocol
  port_range {
    from_port = var.app_port
    to_port = var.app_port
  }
//  tags = var.tags
}

resource "aws_globalaccelerator_endpoint_group" "endpoint_group" {
  listener_arn = aws_globalaccelerator_listener.listener.id
  endpoint_configuration {
    client_ip_preservation_enabled = var.client_ip_preservation_enabled
    endpoint_id = var.endpoint_id
  }
//  tags = var.tags
}