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
  default     = {}
}