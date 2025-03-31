# variables.tf
variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "ha-nginx"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1" # Change this to your desired region
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-03250b0e01c28d196" # Replace with current Ubuntu AMI
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "asg_desired_capacity" {
  description = "Desired number of instances in ASG"
  type        = number
  default     = 2
}

variable "asg_max_size" {
  description = "Maximum number of instances in ASG"
  type        = number
  default     = 4
}

variable "asg_min_size" {
  description = "Minimum number of instances in ASG"
  type        = number
  default     = 2
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "aws-nginx-storage-111" # Change this to be unique
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Environment = "Production"
    Project     = "HA-Nginx"
    ManagedBy   = "Terraform"
  }
}
#testi