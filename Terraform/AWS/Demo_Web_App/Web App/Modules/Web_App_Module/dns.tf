# Create the hosted zone if it does not already exist
resource "aws_route53_zone" "selected" {
  count = var.create_dns_zone ? 1 : 0
  name  = var.domain
}

# Get the hosted zone by name as it does not exist
data "aws_route53_zone" "selected" {
  count        = var.create_dns_zone ? 0 : 1
  name         = var.domain
  private_zone = false
}

# Set the record name, either the main domain or subdomain based on app_name variable
locals {
  dns_zone_id = var.create_dns_zone ? aws_route53_zone.selected[0].zone_id : data.aws_route53_zone.selected[0].zone_id
  subdomain   = var.app_name == "main" ? "" : "${var.app_name}."

}


# Create the A record
resource "aws_route53_record" "a_record" {
  zone_id = local.dns_zone_id
  name    = "${local.subdomain}${var.domain}"
  type    = "A"

    alias {
    name                   = aws_lb.load_balancer.dns_name
    zone_id                = aws_lb.load_balancer.zone_id
    evaluate_target_health = true
  }
}