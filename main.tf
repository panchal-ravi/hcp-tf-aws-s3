terraform {
  backend "remote" {
    organization = "ravi-panchal-org"

    workspaces {
      name = "hcp-tf-aws-s3"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}
