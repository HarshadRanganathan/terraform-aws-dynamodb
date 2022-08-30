terraform {
  required_version = ">= 0.14.11"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.20.1"
      region = var.region
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 2.0"
    }    
  }
}