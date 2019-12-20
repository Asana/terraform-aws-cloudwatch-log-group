output "log_group_arn" {
  description = "The ARN of the log group that we created."
  value       = aws_cloudwatch_log_group.mixmax-log-group.arn
}
