resource "azurerm_template_deployment" "sqltemplate" {
  name = "azdeploy-AzureSQLMachine"
  resource_group_name = var.rg_name
  template_body = file("../../modules/Create-AzureRmSQLServer/azdeploy.json")
  parameters = {
    virtualMachineName = var.vm_name
    sql_adminname = var.sql_adminname
    sql_adminpassword = var.sql_adminpassword
  }
  deployment_mode = "Incremental"
}