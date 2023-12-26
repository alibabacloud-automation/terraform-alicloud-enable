# terraform-alicloud-enable

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-enable/blob/master/README-CN.md)

Terraform Module used to enable several services automatically Alibaba Cloud.

## Usage
Open the Event Bridge Service, Private Zone and Container Registry Service. **Note:** For the Container Registry Service, The initial password, if not configured, will be set to `1111aaaa`,
```hcl
module "example" {
  source                 = "terraform-alicloud-modules/enable/alicloud"
  services = tomap({
    alicloud_event_bridge_service = "On"
    alicloud_pvtz_service         = "On"
    alicloud_cr_service           = "On"
  })
  cr_pwd                 = "your_cr_pwd"
}
```

## Relative Services
| Service Name          |
|----------------------------------------|
| alicloud_event_bridge_service          |
| alicloud_fnf_service                   |
| alicloud_pvtz_service                  |
| alicloud_api_gateway_service           |
| alicloud_cdn_service                   |
| alicloud_cen_transit_router_service    |
| alicloud_cloud_storage_gateway_service |
| alicloud_ack_service                   |
| alicloud_dcdn_service                  |
| alicloud_data_works_service            |
| alicloud_fc_service                    | 
| alicloud_iot_service                   | 
| alicloud_kms_service                   |  
| alicloud_log_service                   | 
| alicloud_mns_service                   |  
| alicloud_nas_service                   | 
| alicloud_oss_service                   | 
| alicloud_privatelink_service           |
| alicloud_ons_service                   |  
| alicloud_ots_service                   |  
| alicloud_cr_service                    | 
| alicloud_sae_service                   | 
| alicloud_datahub_service               |  
| alicloud_cms_service                   |
| alicloud_edas_service                  |

## Examples

* [complete example](https://github.com/terraform-alicloud-modules/terraform-alicloud-enable/tree/master/examples/complete)

## Terraform versions

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.67.0 |

Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
