variable "eks_cluster_name" {
  description = "The name of the EKS cluster"
  type = string
}

variable "vpc_cidr_block" {
  type        = string
  default     = "10.127.32.0/19"
  description = "CIDR block range for vpc"
}

variable "private_subnet_cidr_blocks" {
  type        = list(string)
  default     = ["10.127.40.0/22", "10.127.44.0/22"]
  description = "CIDR block range for the private subnet"
}


variable "availability_zones" {
  type  = list(string)
  default = ["us-east-1a", "us-east-1b"]
  description = "List of availability zones for the selected region"
}

variable "region" {
  description = "aws region to deploy to"
  type        = string
}