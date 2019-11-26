resource "aws_directory_service_directory" "lbaws" {
  name     = "${var.dir_domain_name}"
  password = "${var.dir_admin_password}"
  type     = "${var.dir_type}"
  edition  = "${var.dir_edition}"

  vpc_settings {
    vpc_id     = "${aws_vpc.main.id}"
    subnet_ids = ["${aws_subnet.app-1a.id}", "${aws_subnet.app-1b.id}", "${aws_subnet.app-1d}"]
  }

  tags = {
    Name        = "lbaws-ADService"
    Environment = "Production"
    Author      = "BlueSentry"
    Provisioner = "Terraform"
  }
}

resource "aws_vpc" "lbhosted-vpc" {
  cidr_block = "10.15.0.0/16"
}

resource "aws_subnet" "app-1a" {
  vpc_id            = "${aws_vpc.main.id}"
  availability_zone = "us-east-1a"
  cidr_block        = "10.15.20.0/24"
}

resource "aws_subnet" "app-1b" {
  vpc_id            = "${aws_vpc.main.id}"
  availability_zone = "us-east-1b"
  cidr_block        = "10.15.21.0/24"
}

resource "aws_subnet" "app-1d" {
  vpc_id            = "${aws_vpc.main.id}"
  availability_zone = "us-east-1d"
  cidr_block        = "10.15.22.0/24"
}