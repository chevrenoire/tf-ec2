locals {
  app_name    = "${var.name}-${var.environment}"
  appdns_name = "${var.name}-${var.environment}-dns"
  full_name   = "${title(var.name)}${title(var.environment)}${replace(title(var.region), "-", "")}"
}
