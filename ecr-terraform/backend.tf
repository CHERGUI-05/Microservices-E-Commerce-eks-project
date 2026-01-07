terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "riheb-eks-bucket1-416bd6a2"   # ✅ استبدلنا بالـ bucket الذي أنشأته بنفسك
    key    = "ecr/terraform.tfstate"        # ✅ أبقينا نفس المسار حتى لا يتغير هيكل المشروع
    region = "us-east-1"
  }

  required_version = ">= 1.6.3"
}
