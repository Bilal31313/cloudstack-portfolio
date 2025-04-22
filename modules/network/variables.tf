# modules/network/variables.tf

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "project_name" {
  description = "Project name prefix for resource tagging"
  type        = string
}

variable "public_subnet_count" {
  description = "How many public subnets to create"
  type        = number
  default     = 2
}

variable "availability_zones" {
  description = "List of availability zones to spread subnets across"
  type        = list(string)
}
