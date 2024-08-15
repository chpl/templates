terraform {
    required_providers {
        aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
        }
    }
}

provider "aws" {
  alias = "east_1"
  region  = "us-east-1"
}

provider "aws" {
  alias = "west_2"
  region  = "us-west-2"
}

resource "aws_s3_bucket" "website_bucket_east_1" {
  bucket = "env0-s3-multi-region-us-east-1"
  force_destroy = true

  provider = aws.east_1
}

resource "aws_s3_bucket" "website_bucket_west_2" {
  bucket = "env0-s3-multi-region--west-2"
  force_destroy = true

  provider = aws.west_2
}

