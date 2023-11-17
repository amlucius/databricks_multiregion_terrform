output "workspace_details_us_east_1" {
  value = [module.ws_us_east_1.workspace_url, split("/", module.ws_us_east_1.workspace_id)[1], module.ws_us_east_1.workspace_region]
}

output "workspace_details_us_west_2" {
  value = [module.ws_us_west_2.workspace_url, split("/", module.ws_us_west_2.workspace_id)[1], module.ws_us_west_2.workspace_region]
}