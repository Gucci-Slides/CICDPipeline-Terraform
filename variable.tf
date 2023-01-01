variable "region" {
  description = "region"
  type        = string
  default     = "us-east-1"
}

variable "amiUbuntu20-04" {
  description = "Canonical, Ubuntu, 20.04 LTS, arm64 focal image build on 2022-12-01"
  type        = string
  default     = "ami-023eb859c61ba0b72"
}

variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}
