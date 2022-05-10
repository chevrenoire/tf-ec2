variable "name" {}
variable "region" {}
variable "environment" {}
variable "vpc_id" {}

variable "ami_owner" {}
variable "ami_version_path" {}
variable "instance_type" {}
variable "icount" {}
variable "root_volume_size" {}

variable "key_name" {}
variable "ssh_sg_id" {}

variable "tags_service" {}
variable "tags_environment" {}
variable "tags_application" {}
variable "tags_role" {}

variable "public_dns_zone" {}
variable "private_dns_zone" {}
