databricks_account_id       = "your account id"
databricks_account_username = "user or SP"
databricks_account_password = "password or token"
vpc_cidr                    = "10.10.0.0/16"
prefix_us_east_1            = "alucius-us-east-1"
prefix_us_west_2            = "alucius-us-west-2"
region_us_east_1            = "us-east-1"
region_us_west_2            = "us-west-2"
tags = {
  Owner       = "andrew.lucius@databricks.com"
  Environment = ""
  Budget      = ""
} #optional
force_destroy          = true #destroy buckets when destroying