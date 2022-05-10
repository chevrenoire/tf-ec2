resource "aws_route53_record" "private_a" {
  count   = var.icount
  zone_id = data.aws_route53_zone.private.id
  name = format(
    "${var.name}-%1d.${data.aws_route53_zone.private.name}",
    count.index + 1,
  )
  type    = "A"
  ttl     = "60"
  records = [aws_instance.this[count.index].private_ip]
}

resource "aws_route53_record" "public_a" {
  count   = var.icount
  zone_id = data.aws_route53_zone.public.id
  name = format(
    "${var.name}-%1d.${data.aws_route53_zone.public.name}",
    count.index + 1,
  )
  type    = "A"
  ttl     = "60"
  records = [aws_instance.this[count.index].public_ip]
}

