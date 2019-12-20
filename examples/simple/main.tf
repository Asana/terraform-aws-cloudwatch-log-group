locals {
  name        = "/aws/aes/domains/simple/foo-logs"
  environment = "staging"

}

module "simple" {
  source = "../"

  name             = locals.name
  environment      = locals.environment
  retention_period = "7"

  custom_tags = {
    DomainName = locals.name
  }
}
