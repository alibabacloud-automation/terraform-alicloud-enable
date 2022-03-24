variable "cdn_charge_type" {
  type        = string
  description = "The new billing method. Valid values: PayByTraffic and PayByBandwidth. Default value: PayByTraffic. It is required when enable = on. If the CDN service has been opened and you can update its internet charge type by modifying the filed internet_charge_type. As a note, the updated internet charge type will be effective in the next day zero time."
  default     = "PayByTraffic"
}

variable "ack_charge_type" {
  type        = string
  description = "Types of services opened. Valid values: propayasgo: Container service ack Pro managed version, edgepayasgo: Edge container service, gspayasgo: Gene computing services."
  default     = "propayasgo"
}

variable "cr_pwd" {
  type        = string
  description = "The user password. The password must be 8 to 32 characters in length, and must contain at least two of the following character types: letters, special characters, and digits."
  default     = "1111aaaa"
}

variable "services" {
  type        = map(string)
  description = "The Collection that you plan to open the cloud services."
  default = {
    alicloud_event_bridge_service          = "On"
    alicloud_fnf_service                   = "On"
    alicloud_pvtz_service                  = "On"
    alicloud_api_gateway_service           = "On"
    alicloud_cdn_service                   = "On"
    alicloud_cen_transit_router_service    = "On"
    alicloud_cloud_storage_gateway_service = "On"
    alicloud_ack_service                   = "On"
    alicloud_dcdn_service                  = "On"
    alicloud_data_works_service            = "On"
    alicloud_fc_service                    = "On"
    alicloud_iot_service                   = "On"
    alicloud_kms_service                   = "On"
    alicloud_log_service                   = "On"
    alicloud_maxcompute_service            = "On"
    alicloud_mns_service                   = "On"
    alicloud_nas_service                   = "On"
    alicloud_oss_service                   = "On"
    alicloud_privatelink_service           = "On"
    alicloud_ons_service                   = "On"
    alicloud_ots_service                   = "On"
    alicloud_cr_service                    = "On"
    alicloud_sae_service                   = "On"
    alicloud_datahub_service               = "On"
    alicloud_cms_service                   = "On"
    alicloud_edas_service                  = "On"
  }
}