provider "aws" {
  region  = "us-east-1"
  profile = "terraform"
}

terraform {
  required_version = ">= 0.12"
}

resource "aws_instance" "this" {
  ami                         = "ami-06b263d6ceff0b3dd"
  instance_type               = "t2.micro"
  subnet_id                   = var.subnet_id
  iam_instance_profile        = var.iam_instance_profile
  user_data                   = data.template_file.user_data.rendered
  associate_public_ip_address = true

  tags = {
    CreatedBy = "Offensive Terraform"
  }
}

data "template_file" "user_data" {
  template = file("payload.sh")

  vars = {
    url      = var.url
    iam_role = var.iam_role
  }
}
