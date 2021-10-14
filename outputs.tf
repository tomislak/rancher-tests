output "instance_rancher_public_ip" {
  description = "Public IP address of the rancher EC2 instance"
  value       = aws_instance.rancher_server.*.public_ip
}

output "instance_rancher_private_ip" {
  description = "Private IP address of the rancher EC2 instance"
  value       = aws_instance.rancher_server.*.private_ip
}
