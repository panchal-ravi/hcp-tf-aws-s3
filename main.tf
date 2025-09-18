terraform {
  backend "remote" {
    organization = "ravi-panchal-org"

    workspaces {
      name = "aws-s3-bucket"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}
