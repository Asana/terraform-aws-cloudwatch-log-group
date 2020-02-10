locals {
  name        = "/aws/development/simple"
  service     = "development"
  environment = "staging"
}

module "simple" {
  source = "../.."

  name             = local.name
  service          = local.service
  environment      = local.environment
  retention_period = "7"

  custom_tags = {
    DomainName = local.name
  }
}
