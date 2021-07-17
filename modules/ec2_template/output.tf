output "aws_eip" {
   description = "display eip ip"
   value = aws_eip.eip_manager
}


output "id" {
  description = "List of IDs of instances"
  value       = aws_instance.ec2_template.*.id
}


output "instance_count" {
  description = "Number of instances to launch specified as argument to this module"
  value       = var.instance_count
}

