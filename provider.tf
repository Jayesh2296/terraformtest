terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    resource_provider_registrations = "none"
  features {}

  subscription_id = "9734ed68-621d-47ed-babd-269110dbacb1"
  tenant_id       = "84f1e4ea-8554-43e1-8709-f0b8589ea118"
  client_id = "235cc3cf-8ab9-4a5c-a3de-b214c87a5c99"
  client_secret = var.client_secret
}