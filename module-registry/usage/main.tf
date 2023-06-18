module "gh_null" {
  source = "api-pr12306.dev.env0.com/737bb6df-1d96-4cec-825b-1e957dc54b95/null/github"
  version = "1.0.0"
}

output "name" {
  value = module.gh_null.message
}