terraform {
  required_version = ">= 1.10.0"
  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    vmworkstation = {
      source  = "elsudano/vmworkstation"
      version = "~> 2.0.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
}



provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

# nécessite de lancer vmrest.exe 
provider "vmworkstation" {
  endpoint = var.vmware_api_url
  username = var.vmware_username
  password = var.vmware_password
  debug    = "NONE"

}
