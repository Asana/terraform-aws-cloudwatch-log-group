locals {
  name        = "/aws/aes/domains/simple/foo-logs"
  environment = "staging"
}

module "simple" {
  source = "../.."

  name             = local.name
  environment      = local.environment
  retention_period = "7"

  custom_tags = {
    DomainName = local.name
  }
}
