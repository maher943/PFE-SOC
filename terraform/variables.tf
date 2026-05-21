
# Azure
variable "subscription_id" {
  type = string
  description = "Azure Subscription ID"
}

variable "location" { 
  description = "Azure region where resources will be created" 
  type = string 
  default = "East US" 
  }

variable "prefix" {
  description = "Prefix used for naming Azure resources" 
  type = string
  default = "soc"
 }

variable "admin_username" { 
  description = "LinuxVM admin username" 
  type = string 
  default = "azureuser"
   }

variable "ssh_public_key_path" { 
  description = "Path to the SSH public key" 
  type = string 
  }
