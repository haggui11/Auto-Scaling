# outputs.tf
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "alb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.nginx.dns_name
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.storage.id
}

output "nginx_security_group_id" {
  description = "The ID of the Nginx security group"
  value       = aws_security_group.nginx.id
}
output "autoscaling_group_name" {
  description = "The name of the Auto Scaling group"
  value       = aws_autoscaling_group.nginx.name
}

output "autoscaling_group_min_size" {
  description = "The minimum size of the Auto Scaling group"
  value       = aws_autoscaling_group.nginx.min_size
}

output "autoscaling_group_max_size" {
  description = "The maximum size of the Auto Scaling group"
  value       = aws_autoscaling_group.nginx.max_size
}

output "autoscaling_group_desired_capacity" {
  description = "The desired capacity of the Auto Scaling group"
  value       = aws_autoscaling_group.nginx.desired_capacity
}

output "cpu_policy_name" {
  description = "The name of the CPU target tracking policy"
  value       = aws_autoscaling_policy.cpu_policy.name
}

output "cpu_policy_target_value" {
  description = "The target CPU utilization percentage"
  value       = var.cpu_target_value
}

output "cpu_policy_arn" {
  description = "The ARN of the CPU target tracking policy"
  value       = aws_autoscaling_policy.cpu_policy.arn
}
#testin