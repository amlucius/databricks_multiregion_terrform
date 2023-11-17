variable "vpc_cidr" {
  type        = string
  description = "CIDR range of the AWS VPC the workspace will be deployed in"
}

variable "region" {
  type        = string
  description = "Region resources and Databricks will be deployed in"
}

variable "databricks_account_id" {
  type        = string
  description = "Databricks account id from accounts console"
}

variable "databricks_account_username" {
  type = string
}

variable "databricks_account_password" {
  type = string # https://learn.hashicorp.com/tutorials/terraform/sensitive-variables?in=terraform/0-14#set-values-with-environment-variables
}

variable "databricks_aws_account_id" {
  type        = string
  description = "Databricks AWS account id. This is unlikely to change ever."
  default     = "414351767826"
}

variable "prefix" {
  type        = string
  description = "Prefix to be attached to every AWS and Databricks resource created for uniqueness"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be applied to all AWS resources"
}

variable "force_destroy" {
  type        = bool
  description = "Whether S3 buckets should be deleted when you run terraform destroy"
  default     = true
}