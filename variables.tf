variable "resource_ami_amazonLinux2" {
  description = "AMI for Amazon Linux 2"
  type        = string
  default     = "ami-0bad4a5e987bdebde"
}

variable "resource_ami_ubuntuLinux2004" {
  description = "AMI for Ubuntu Linux 20.04"
  type        = string
  default     = "ami-05f7491af5eef733a"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "rancher_server_instance_name" {
  description = "Value of the Name tag for the EC2 rancher_server instance"
  type        = string
  default     = "RancherServer"
}

variable "environment" {
  description = "Sort of environment"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "Name of environment"
  type        = string
  default     = "rancherProject1"
}
