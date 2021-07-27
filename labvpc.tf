name   = "tag:Name"
    values = ["pri*"]
  }
}
output "Private_Subnet" {
  value = data.aws_subnet.private-subnet.id
}

resource "aws_instance" "G1" {
  ami           = data.aws_ami.latest-os.id
  instance_type = "t2.micro"
  subnet_id     = var.server == "web" ? data.aws_subnet.public-subnet.id : data.aws_subnet.private-subnet.id
  tags = {
    Env  = "Prod"
    Name = "Gayathri_lab"
  }
}
