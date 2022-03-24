data "alicloud_event_bridge_service" "open" {
  enable = lookup(var.services, "alicloud_event_bridge_service", "Off")
}

data "alicloud_fnf_service" "open" {
  enable = lookup(var.services, "alicloud_fnf_service", "Off")
}

data "alicloud_pvtz_service" "open" {
  enable = lookup(var.services, "alicloud_pvtz_service", "Off")
}

data "alicloud_api_gateway_service" "open" {
  enable = lookup(var.services, "alicloud_api_gateway_service", "Off")
}

data "alicloud_cdn_service" "open" {
  enable               = lookup(var.services, "alicloud_cdn_service", "Off")
  internet_charge_type = var.cdn_charge_type
}

data "alicloud_cen_transit_router_service" "open" {
  enable = lookup(var.services, "alicloud_cen_transit_router_service", "Off")
}

data "alicloud_cloud_storage_gateway_service" "open" {
  enable = lookup(var.services, "alicloud_cloud_storage_gateway_service", "Off")
}

data "alicloud_ack_service" "open" {
  enable = lookup(var.services, "alicloud_ack_service", "Off")
  type   = var.ack_charge_type
}

data "alicloud_dcdn_service" "open" {
  enable = lookup(var.services, "alicloud_dcdn_service", "Off")
}
data "alicloud_data_works_service" "open" {
  enable = lookup(var.services, "alicloud_data_works_service", "Off")
}

data "alicloud_fc_service" "open" {
  enable = lookup(var.services, "alicloud_fc_service", "Off")
}
data "alicloud_iot_service" "open" {
  enable = lookup(var.services, "alicloud_iot_service", "Off")
}
data "alicloud_kms_service" "open" {
  enable = lookup(var.services, "alicloud_kms_service", "Off")
}
data "alicloud_log_service" "open" {
  enable = lookup(var.services, "alicloud_log_service", "Off")
}
data "alicloud_maxcompute_service" "open" {
  enable = lookup(var.services, "alicloud_maxcompute_service", "Off")
}
data "alicloud_mns_service" "open" {
  enable = lookup(var.services, "alicloud_mns_service", "Off")
}
data "alicloud_nas_service" "open" {
  enable = lookup(var.services, "alicloud_nas_service", "Off")
}

data "alicloud_oss_service" "open" {
  enable = lookup(var.services, "alicloud_oss_service", "Off")
}
data "alicloud_privatelink_service" "open" {
  enable = lookup(var.services, "alicloud_privatelink_service", "Off")
}
data "alicloud_ons_service" "open" {
  enable = lookup(var.services, "alicloud_ons_service", "Off")
}

data "alicloud_ots_service" "open" {
  enable = lookup(var.services, "alicloud_ots_service", "Off")
}

data "alicloud_cr_service" "open" {
  enable   = lookup(var.services, "alicloud_cr_service", "Off")
  password = var.cr_pwd
}

data "alicloud_sae_service" "open" {
  enable = lookup(var.services, "alicloud_sae_service", "Off")
}

data "alicloud_datahub_service" "open" {
  enable = lookup(var.services, "alicloud_datahub_service", "Off")
}

data "alicloud_cms_service" "open" {
  enable = lookup(var.services, "alicloud_cms_service", "Off")
}

data "alicloud_edas_service" "open" {
  enable = lookup(var.services, "alicloud_edas_service", "Off")
}