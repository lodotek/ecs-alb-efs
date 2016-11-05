# aws creds
variable "access_key" {}
variable "secret_key" {}

# container vars
variable "ecr_account" { default = "048844758804" }
variable "namespace" { default = "microservices"}
variable "container_name" { default = "product-web,products" }
variable "container_port" { default = "8000,8001" }
variable "desired_count" { default = "2,2" }
variable "version_tag" { default = "latest,latest" }

variable "resource_tag" {
  description = "Name Tag to precede all resources"
  default = "MCSV-POC"
}

variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-west-2"
}

variable "cidr_block" {
  description = "The cidr block of the VPC you would like to create"
  default     = "10.10.0.0/16"
}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "2"
}

variable "key_name" {
  description = "Name of AWS key pair"
}

variable "instance_type" {
  default     = "t2.small"
  description = "AWS instance type"
}

variable "asg_min" {
  description = "Min numbers of servers in ASG"
  default     = "2"
}

variable "asg_max" {
  description = "Max numbers of servers in ASG"
  default     = "5"
}

variable "asg_desired" {
  description = "Desired numbers of servers in ASG"
  default     = "2"
}

variable "admin_cidr_ingress" {
  description = "CIDR to allow tcp/22 ingress to EC2 instance"
}