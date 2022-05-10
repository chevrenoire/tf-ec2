data "aws_vpc" "selected" {
  id = var.vpc_id
}

data "aws_subnet_ids" "selected" {
  vpc_id = data.aws_vpc.selected.id
}

data "aws_availability_zones" "all" {
}

data "aws_ami" "this" {
  most_recent = true
  owners      = ["${var.ami_owner}"]

  filter {
    name   = "name"
    values = ["${var.ami_version_path}"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_route53_zone" "public" {
  name         = var.public_dns_zone
  private_zone = false
}

data "aws_route53_zone" "private" {
  name         = var.private_dns_zone
  private_zone = false
}


