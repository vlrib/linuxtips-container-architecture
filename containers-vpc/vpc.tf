resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Description = "vpc used for container architecture course"
    Name        = "${var.owner}-${var.project_name}"
    Owner       = var.owner
  }
}