provider "aws" {
  profile = "default"
  region  = var.aws_region
}

resource "aws_instance" "rancher_server" {
  ami             = var.resource_ami_ubuntuLinux2004
  instance_type   = "t2.medium"
  key_name        = "etokral@ubuntu2004gui"
  security_groups = ["my-default", ]

  tags = {
    Name        = var.rancher_server_instance_name
    Project     = var.project
    Environment = var.environment
  }
}
