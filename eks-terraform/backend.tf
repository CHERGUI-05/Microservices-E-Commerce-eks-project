terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "riheb-eks-bucket1-e0640a5f"   # استعملي هذا أو الثاني
    key    = "eks/terraform.tfstate"        # مسار تخزين الـ state داخل الـ bucket
    region = "us-east-1"
  }

  required_version = ">= 1.6.3"
}
