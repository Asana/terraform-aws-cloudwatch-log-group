resource "aws_cloudwatch_log_group" "mixmax-log-group" {
  name              = var.name
  retention_in_days = var.retention_period

  tags = merge(map("Environment", var.environment), var.custom_tags)
}
