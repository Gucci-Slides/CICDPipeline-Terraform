terraform {

  cloud {
    organization = "arliss"
    workspaces {
      name = "CICDPipeline"
    }
  }
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
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"
  tags = {
    Name = "TF-Instance"
  }
}

