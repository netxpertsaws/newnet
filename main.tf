terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.27.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA4WG2YRJRY3DD5PMU"
  secret_key = "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"
}