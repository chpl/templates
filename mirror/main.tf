terraform {
  required_providers {

    // mirrored provider with version constraint
    aws = {
      source  = "hashicorp/aws"
      version = "> 5"
    }

    // mirrored provider without version constraint
    env0 = {
      source = "env0/env0"
    }

    // not mirrored provider
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.9.3"
    }

    null = {
      # when running with terraform `hashicorp/null` is `registry.terraform.io/hashicorp/null`
      # and `registry.opentofu.org/hashicorp/null` won't be mirrored
      source = "registry.opentofu.org/hashicorp/null"
    }
  }
}