resource "aws_instance" "this" {
  count = var.icount
  ami   = data.aws_ami.this.id

  instance_type               = var.instance_type
  subnet_id                   = element(tolist(data.aws_subnet_ids.selected.ids), count.index)
  vpc_security_group_ids      = [var.ssh_sg_id]
  iam_instance_profile        = aws_iam_instance_profile.this.id
  key_name                    = var.key_name
  associate_public_ip_address = "true"
  monitoring                  = "true"

  lifecycle {
    ignore_changes = [ami]
  }

  root_block_device {
    encrypted   = true
    volume_size = var.root_volume_size
  }

  tags = {
    Name        = format("${var.name}-%1d", count.index + 1)
    Environment = var.tags_environment
    Application = var.tags_application
    Role        = var.tags_role
    Service     = var.tags_service
  }
}

