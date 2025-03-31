resource "azurerm_service_plan" "plan1" {
  name                = "webappplan1"
  resource_group_name = data.azurerm_resource_group.mainrg.name
  location            = data.azurerm_resource_group.mainrg.location
  os_type             = "Windows"
  sku_name            = "F1"
}

resource "azurerm_windows_web_app" "web1" {
  name                = "webapp1000022"
  resource_group_name = data.azurerm_resource_group.mainrg.name
  location            = data.azurerm_resource_group.mainrg.location
  service_plan_id     = azurerm_service_plan.plan1.id

  site_config {
    always_on = false
    application_stack {
      current_stack = "dotnet"
      dotnet_version = "v6.0"
    }
  }
  depends_on = [ azurerm_service_plan.plan1 ]
}