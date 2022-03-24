module "enable" {
  source          = "../.."
  cdn_charge_type = var.cdn_charge_type
  ack_charge_type = var.ack_charge_type
  cr_pwd          = var.cr_pwd
  services        = var.services
}
