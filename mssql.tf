resource "azurerm_mssql_server" "mysqlserver1000022" {
  name                         = "mysqlserver1000022"
  resource_group_name          = data.azurerm_resource_group.mainrg.name
  location                     = data.azurerm_resource_group.mainrg.location
  version                      = "12.0"
  administrator_login          = "sqlusr"
  administrator_login_password = var.administrator_login_password
}

resource "azurerm_mssql_database" "appdb" {
  name         = "appdb"
  server_id    = azurerm_mssql_server.mysqlserver1000022.id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "Basic"
  depends_on = [ azurerm_mssql_server.mysqlserver1000022 ]
}