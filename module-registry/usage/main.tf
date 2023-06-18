module "gh_private_null" {
  source  = "api-pr12306.dev.env0.com/737bb6df-1d96-4cec-825b-1e957dc54b95/gh_private/null"
  version = "1.0.0"
  name    = "private"
}

output "private_output_name" {
  value = module.gh_private_null.message
}

module "gh_public_null" {
  source  = "api-pr12306.dev.env0.com/737bb6df-1d96-4cec-825b-1e957dc54b95/gh_public/null"
  version = "1.0.0"
  name    = "public"
}

output "public_output_name" {
  value = module.gh_public_null.message
}