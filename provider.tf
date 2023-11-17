terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.0"
    }
  }
}

provider "aws" {
    region = var.region_us_east_1
    alias = "us_east_1"
    profile = "aws-sandbox-ephemeral_databricks-sandbox-admin"
}

provider "aws" {
    region = var.region_us_west_2
    alias = "us_west_2"
    profile = "aws-sandbox-ephemeral_databricks-sandbox-admin"
}

provider "databricks" {
  alias      = "mws"
  host       = "https://accounts.cloud.databricks.com"
  account_id = var.databricks_account_id
  username   = var.databricks_account_username
  password   = var.databricks_account_password
}

provider "databricks" {
  alias    = "workspace_us_east_1"
  host     = module.ws_us_east_1.workspace_url
  account_id = var.databricks_account_id
  username = var.databricks_account_username
  password = var.databricks_account_password
}

provider "databricks" {
  alias    = "workspace_us_west_2"
  host     = module.ws_us_west_2.workspace_url
  account_id = var.databricks_account_id
  username = var.databricks_account_username
  password = var.databricks_account_password
}