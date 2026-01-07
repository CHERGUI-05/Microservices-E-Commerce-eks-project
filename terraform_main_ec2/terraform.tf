terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.25.0"
    }
  }

  # Backend لتخزين حالة Terraform في S3
  backend "s3" {
    bucket = "riheb-eks-bucket1-416bd6a2"   # ← غيّرنا الاسم ليطابق الـ bucket الجديد
    key    = "ec2/terraform.tfstate"
    region = "us-east-1"
  }

  required_version = ">= 1.6.3"
}

provider "aws" {
  region = "us-east-1"
}
