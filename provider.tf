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

  subscription_id = "2213e8b1-dbc7-4d54-8aff-b5e315df5e5b"
  tenant_id       = "84f1e4ea-8554-43e1-8709-f0b8589ea118"
  client_id = "a688bcf9-0636-4835-8b56-3f8e285fcaaa"
  client_secret = var.client_secret
}