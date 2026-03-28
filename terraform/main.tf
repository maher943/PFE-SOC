terraform {
  required_providers {
    vmworkstation = {
      source  = "elsudano/vmworkstation"
      version = "2.0.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "vmworkstation" {
  endpoint = var.vmware_api_url
  username = var.vmware_username
  password = var.vmware_password
  debug = "NONE"
  
}

resource "vmworkstation_virtual_machine" "ubuntu_vm" {
  path         = var.vm_path
  sourceid     = var.template_id
  denomination = var.vm_name
  description  = "Ubuntu VM créée par Terraform"
  processors   = var.cpu_count
  memory       = var.memory_mb
}