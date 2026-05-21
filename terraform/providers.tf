terraform {
  required_version = ">= 1.10.0"
  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
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

