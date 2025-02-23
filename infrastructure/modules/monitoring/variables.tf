#modules/monitoring/variables.tf
variable "contact_group_name" {
  description = "Name for the contact group"
  type        = string
}

variable "alert_emails" {
  description = "List of email addresses for alerts"
  type        = list(string)
}

variable "name_prefix" {
  description = "Prefix for the monitor name"
  type        = string
  default     = "monitor"
}

variable "website_name" {
  description = "Name of the website"
  type        = string
}

variable "website_url" {
  description = "URL to monitor"
  type        = string
}

variable "check_interval" {
  description = "Interval between checks in seconds"
  type        = number
  default     = 300
}

variable "confirmation_count" {
  description = "Number of confirmations before alert"
  type        = number
  default     = 2
}

variable "trigger_rate" {
  description = "Rate of triggers"
  type        = number
  default     = 0
}

variable "timeout" {
  description = "Timeout for HTTP checks in seconds"
  type        = number
  default     = 30
}

variable "status_codes" {
  description = "List of status codes to consider as successful"
  type        = list(string)
  default     = ["200", "201", "301", "302"]
}

variable "monitoring_tags" {
  description = "Tags for the monitoring check"
  type        = list(string)
  default     = ["production"]
}