/*Databricks workspace initialization*/
module "ws_us_east_1" {
  source = ".//ws_core"
    providers = {
    databricks.mws = databricks.mws,
    aws = aws.us_east_1
  }
  databricks_account_username = var.databricks_account_username
  databricks_account_password = var.databricks_account_password
  databricks_account_id = var.databricks_account_id
  tags = var.tags
  prefix = var.prefix_us_east_1
  region = var.region_us_east_1
}

module "ws_us_west_2" {
  source = ".//ws_core"
    providers = {
    databricks.mws = databricks.mws,
    aws = aws.us_west_2
  }
  databricks_account_username = var.databricks_account_username
  databricks_account_password = var.databricks_account_password
  databricks_account_id = var.databricks_account_id
  tags = var.tags
  prefix = var.prefix_us_west_2
  region = var.region_us_west_2
}


/*Databricks workspace configuration*/
module "ws_config_us_east_1" {
  source = ".//ws_config"
    providers = {
    databricks.mws = databricks.mws
    databricks.created_workspace = databricks.workspace_us_east_1
  }
  databricks_account_id = var.databricks_account_id
  prefix = var.prefix_us_east_1
  region = var.region_us_east_1
  metastore_id = module.ws_us_east_1.metastore_id
  metastore_name = module.ws_us_east_1.metastore_name
  metastore_arn = module.ws_us_east_1.metastore_arn
  ip_arn = module.ws_us_east_1.ip_arn
  log_arn = module.ws_us_east_1.log_arn
  log_bucket = module.ws_us_east_1.log_bucket
  log_ip_arn = module.ws_us_east_1.log_ip_arn
  group_b_role_name = module.ws_us_east_1.group_b_role_name
  group_b_role_arn = module.ws_us_east_1.group_b_role_arn
  group_b_bucket_id = module.ws_us_east_1.group_b_bucket_id
  workspace_id =  split("/", module.ws_us_east_1.workspace_id)[1]
  workspace_url = module.ws_us_east_1.workspace_url
}

module "ws_config_us_west_2" {
  source = ".//ws_config"
    providers = {
    databricks.mws = databricks.mws
    databricks.created_workspace = databricks.workspace_us_west_2
  }
  databricks_account_id = var.databricks_account_id
  prefix = var.prefix_us_west_2
  region = var.region_us_west_2
  metastore_id = module.ws_us_west_2.metastore_id
  metastore_name = module.ws_us_west_2.metastore_name
  metastore_arn = module.ws_us_west_2.metastore_arn
  ip_arn = module.ws_us_west_2.ip_arn
  log_arn = module.ws_us_west_2.log_arn
  log_bucket = module.ws_us_west_2.log_bucket
  log_ip_arn = module.ws_us_west_2.log_ip_arn
  group_b_role_name = module.ws_us_west_2.group_b_role_name
  group_b_role_arn = module.ws_us_west_2.group_b_role_arn
  group_b_bucket_id = module.ws_us_west_2.group_b_bucket_id
  workspace_id =  split("/", module.ws_us_west_2.workspace_id)[1]
  workspace_url = module.ws_us_west_2.workspace_url
}
