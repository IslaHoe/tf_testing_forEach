provider "aws" {
  profile = "saml"
  version = "2.49.0"
  region  = "eu-west-1"
}

resource "aws_instance" "server" {
  for_each      = toset(var.subnet_ids)
  ami           = "ami-08e70a3276d2362f1"
  instance_type = "t2.micro"
  subnet_id     = each.key

  tags = {
    Name = "server ${each.key}"

  }

}

resource "null_resource" "example" {}
resource "null_resource" "example2" {}


