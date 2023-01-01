terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "DemoEC2" {
  ami           = var.amiUbuntu22-04
  instance_type = var.instance_type
  tags = {
    Name = "EC2"
  }
}

