terraform {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-vpc.git?ref=v5.17.0"
}

locals {
  env_vars    = (read_terragrunt_config(find_in_parent_folders("env.hcl"))).locals
  common_tags = (read_terragrunt_config(find_in_parent_folders("common_tags.hcl"))).locals
  merged_tags = merge(local.env_vars, local.common_tags.common_tags)
  env         = local.env_vars.short_env
  region      = (read_terragrunt_config(find_in_parent_folders("region.hcl"))).locals.aws_region
}

include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name = "${local.env_vars.project}-${local.env}-vpc"
  cidr = "10.0.0.0/16"

  azs                     = ["${local.region}a", "${local.region}b"]
  public_subnets          = ["10.0.101.0/24", "10.0.102.0/24"]
  private_subnets         = ["10.0.1.0/24", "10.0.2.0/24"]
  enable_nat_gateway      = false
  single_nat_gateway      = false
  enable_vpn_gateway      = false
  enable_dns_support      = true
  enable_dns_hostnames    = true
  map_public_ip_on_launch = true

  tags = local.merged_tags
}