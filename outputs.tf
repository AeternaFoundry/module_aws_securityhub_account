output "securityhub_accounts_id" {
  description = "Map of id values across all securityhub_accounts, keyed the same as var.securityhub_accounts"
  value       = { for k, v in aws_securityhub_account.securityhub_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "securityhub_accounts_arn" {
  description = "Map of arn values across all securityhub_accounts, keyed the same as var.securityhub_accounts"
  value       = { for k, v in aws_securityhub_account.securityhub_accounts : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "securityhub_accounts_auto_enable_controls" {
  description = "Map of auto_enable_controls values across all securityhub_accounts, keyed the same as var.securityhub_accounts"
  value       = { for k, v in aws_securityhub_account.securityhub_accounts : k => v.auto_enable_controls if v.auto_enable_controls != null }
}
output "securityhub_accounts_control_finding_generator" {
  description = "Map of control_finding_generator values across all securityhub_accounts, keyed the same as var.securityhub_accounts"
  value       = { for k, v in aws_securityhub_account.securityhub_accounts : k => v.control_finding_generator if v.control_finding_generator != null && length(v.control_finding_generator) > 0 }
}
output "securityhub_accounts_enable_default_standards" {
  description = "Map of enable_default_standards values across all securityhub_accounts, keyed the same as var.securityhub_accounts"
  value       = { for k, v in aws_securityhub_account.securityhub_accounts : k => v.enable_default_standards if v.enable_default_standards != null }
}
output "securityhub_accounts_region" {
  description = "Map of region values across all securityhub_accounts, keyed the same as var.securityhub_accounts"
  value       = { for k, v in aws_securityhub_account.securityhub_accounts : k => v.region if v.region != null && length(v.region) > 0 }
}

