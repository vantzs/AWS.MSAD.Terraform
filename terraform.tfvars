# AWS credentials
provider_aws_access_key = "access_key_here"
provider_aws_secret_key = "secret_key_here"
provider_aws_zone = "us-east-1"

# Directory Service
dir_domain_name     = "lbaws.logicbay.com"
dir_admin_password  = "kTz!+6e+8-GWE%tr"
dir_type            = "MicrosoftAD"
dir_edition         = "Standard"
dir_computer_ou     = "OU=servers,dc=lbaws,dc=logicbay,dc=com"

# AD Writer machine
vm_adwriter_disable_api_termination = false
vm_adwriter_instance_type           = "t2.small"
vm_adwriter_image                   = "ami-08b11fc5bd2026dee" # Windows Server 2016 Base, us-east-1
vm_adwriter_disk_size               = 40

