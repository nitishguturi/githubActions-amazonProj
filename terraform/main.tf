terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.1"
    }
  }
}
provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "rg" {
  name = var.resourcegroupname
  location = var.location
}

resource "azurerm_service_plan" "appservice" {
  location = var.location
  name = var.appserviceplan
  resource_group_name = azurerm_resource_group.rg.name
  os_type = "Windows"
  sku_name = "B1"
}

resource "azurerm_windows_web_app" "webapp" {
  name = var.webappname
  location = var.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id = azurerm_service_plan.appservice.id
  site_config {
    application_stack {
      current_stack = "dotnet"
      dotnet_version = "v8.0"
    }
  }
}
