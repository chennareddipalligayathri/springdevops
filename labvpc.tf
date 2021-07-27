provider "aws" {
  region = "us-east-1"
}
variable "hw" {
 type = string
 default = "t2.nano"
}
resource "aws_instance" "gayathri-cloud" {
  ami           = "ami-0dc2d3e4c0f9ebd18"
  instance_type = var.hw
  tags = {
    Name = "Gagandeep-dev-instance"
  }
}

output "MY_PUBLIC_IP" {
 value = aws_instance.gagan-server1.public_ip
}
