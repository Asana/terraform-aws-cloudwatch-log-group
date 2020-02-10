output "log_group_arn" {
  description = "The ARN of the log group that we created."
  value       = aws_cloudwatch_log_group.mixmax-log-group.arn
}

output "log_group_name" {
  description = "The name of the log group we created"
  value       = aws_cloudwatch_log_group.mixmax-log-group.name
}
