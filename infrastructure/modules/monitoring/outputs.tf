#modules/monitoring/outputs.tf
output "contact_group_id" {
  description = "ID of the created contact group"
  value       = statuscake_contact_group.alert_group.id
}

output "uptime_check_id" {
  description = "ID of the created uptime check"
  value       = statuscake_uptime_check.monitoring.id
}