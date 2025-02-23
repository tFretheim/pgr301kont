#outputs.tf
# Original outputs (Task 1-2)
output "contact_group_id" {
  description = "ID of the created contact group"
  value       = statuscake_contact_group.monitoring_group.id
}

output "uptime_check_id" {
  description = "ID of the created uptime check"
  value       = statuscake_uptime_check.website.id
}

# Module outputs (Task 3)
output "prod_contact_group_id" {
  value = module.prod_monitoring.contact_group_id
}

output "prod_uptime_check_id" {
  value = module.prod_monitoring.uptime_check_id
}

output "dev_contact_group_id" {
  value = module.dev_monitoring.contact_group_id
}

output "dev_uptime_check_id" {
  value = module.dev_monitoring.uptime_check_id
}