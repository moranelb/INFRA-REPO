terraform {
  source = find_in_parent_folders("tf-moduls/eks_argocd")
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
  chart_version = "3.3.5"
  hosts         = ["argocd.moran.site"]
}