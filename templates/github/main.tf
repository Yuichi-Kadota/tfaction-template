locals {
  # CHANGE
  github_owner = "Yuichi-Kadota"
}

terraform {
  required_version = ">= 1.0"
  backend "s3" {
    region = "ap-northeast-1"        # CHANGE
    bucket = "kdt0221-tfaction-make-bucket-sample" # CHANGE
    key    = "%%TARGET%%/v1/terraform.tfstate"
  }
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  owner = local.github_owner
}
