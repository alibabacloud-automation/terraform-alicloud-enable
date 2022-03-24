terraform-alicloud-enable
======================

Terraform模块用于实现阿里云上云产品开通服务。


## 用法

```hcl
module "example" {
  source                 = "terraform-alicloud-modules/enable/alicloud"
  cdn_charge_type        = "PayByTraffic"
  ack_charge_type        = "propayasgo"
  services               = tomap({})
  cr_pwd                 = "your_cr_pwd"
}
```

### 开通指定云产品服务
开通 Event Bridge Service, Private Zone 及 Container Registry 云产品服务. **注意:** 对于Container Registry, 如果您未配置密码, 初始密码将被设为`1111aaaa`.
```hcl
module "example" {
  source = "terraform-alicloud-modules/enable/alicloud"
  services = tomap({
    alicloud_event_bridge_service = "On"
    alicloud_pvtz_service         = "On"
    alicloud_cr_service           = "On"
    cr_pwd                        = "1111aaaa"
  })
}
```

## 相关服务
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
| alicloud_maxcompute_service            |  
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

## 示例

* [ENABLE 完整示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-enable/tree/master/examples/complete)


## Terraform 版本

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.67.0 |

作者
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

许可
----
Apache 2 Licensed. See LICENSE for full details.

参考
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
