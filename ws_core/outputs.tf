output "workspace_url" {
  value = databricks_mws_workspaces.this.workspace_url
}

output "workspace_region" {
  value = databricks_mws_workspaces.this.aws_region
}

output "workspace_id" {
    value = databricks_mws_workspaces.this.id
}

output "metastore_id" {
    value = aws_s3_bucket.dnb_metastore.id
}

output "metastore_name" {
  value = aws_iam_role_policy.dnb_metastore_role_policy.name
}

output "metastore_arn" {
    value = aws_iam_role.dnb_metastore_role.arn  
}

output "ip_arn" {
    value = aws_iam_instance_profile.group_b_profile.arn
}

output "group_b_role_name" {
  value = aws_iam_role.group_b_role.name
}

output "group_b_role_arn" {
  value = aws_iam_role.group_b_role.arn
}

output "group_b_bucket_id" {
  value = aws_s3_bucket.group_b.id
}

output "log_arn" {
  value = aws_iam_role.logdelivery.arn
}

output "log_bucket" {
  value = aws_s3_bucket.logdelivery.bucket 
}

output "log_ip_arn" {
  value = aws_iam_instance_profile.logs_profile.arn
}