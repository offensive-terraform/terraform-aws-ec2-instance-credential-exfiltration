variable "subnet_id" {
  type        = string
  description = "The VPC Subnet ID to launch in."
}

variable "url" {
  type        = string
  description = "The URL to exfiltrate AWS EC2 credential."
}

variable "iam_instance_profile" {
  type        = string
  description = "The IAM Instance Profile to launch the instance with."
}

variable "iam_role" {
  type        = string
  description = "The IAM Role to launch the instance with."
}
