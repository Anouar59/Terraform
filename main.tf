provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Amazon-Linux2-Server" {
  count         = 1
  ami           = "ami-07761f3ae34c4478d"
  instance_type = "t2.medium"
  key_name      = "aws keypair"
  tags = {
    Name = "Amazon-Linux2-VM"
  }
}
