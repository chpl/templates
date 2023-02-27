data "terraform_remote_state" "test" {
  backend = "remote"
  config = {
    hostname     = "backend-dev.api.dev.env0.com"
    organization = "bd12a04a-b051-4f51-9a8a-8a32ac198802"
    workspaces = {
      name = "chaim-with-output"
    }
  }
}

output "remote_state" {
  value = data.terraform_remote_state.test.outputs.custom_flow_tf_var
}