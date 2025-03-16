# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" # Optional but recommended in production
    }  
  }
   backend "azurerm" {
    resource_group_name  = "terrastate"
    storage_account_name = "terratatesa"
    container_name      = "tfstate"
    key                 = "terraform.tfstate"
  } 
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    subscription_id = "###############################"
  features {}
}
