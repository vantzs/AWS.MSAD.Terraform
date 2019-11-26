# AWS credentials
variable "provider_aws_access_key" { }
variable "provider_aws_secret_key" { }
variable "provider_aws_zone" { }

# Directory Service
variable "dir_domain_name" {}
variable "dir_admin_password" {}
variable "dir_type" {}
variable "dir_edition" {}
variable "dir_computer_ou" {}

# AD Writer machine
variable "vm_adwriter_disable_api_termination" {}
variable "vm_adwriter_instance_type" {}
variable "vm_adwriter_image" {}
variable "vm_adwriter_disk_size" {}