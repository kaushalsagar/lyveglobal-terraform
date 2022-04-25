module "public_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"

  name        = var.sg-name
  description = "Security Group with SSH port open"
  vpc_id      = module.vpc.vpc_id
  # Ingress Rules & CIDR Blocks
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  # Egress Rule - all-all open
  egress_rules = ["all-all"]

}
