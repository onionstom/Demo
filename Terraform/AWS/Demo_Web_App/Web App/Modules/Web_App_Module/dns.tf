# Get the hosted zone by name
data "aws_route53_zone" "selected" {
  name         = "tomonions.co.uk"
  private_zone = false
}

# Create the A record
resource "aws_route53_record" "a_record" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = var.domain
  type    = "A"

    alias {
    name                   = aws_lb.load_balancer.dns_name
    zone_id                = aws_lb.load_balancer.zone_id
    evaluate_target_health = true
  }
}