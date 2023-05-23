  resource "aws_instance" "Practice_instance" {
          ami = var.ami
          instance_type = var.instance_type
          tags = {
             Name = "Practice_instance"
          }
    
  }

  resource "aws_key_pair" "demo-key" {
  key_name   = "demo-key"
  public_key = tls_private_key.rsa-key.public_key_openssh
}

resource "tls_private_key" "rsa-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "demo-key" {
  content  = tls_private_key.rsa-key.private_key_pem
  filename = "${path.module}/demo-key"
  
}