terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "riheb-eks-terraform-state"   # غيّري الاسم لاسم فريد خاص بك
    key    = "eks/terraform.tfstate"       # مسار تخزين الـ state
    region = "us-east-1"
  }

  required_version = ">= 1.6.3"
}
