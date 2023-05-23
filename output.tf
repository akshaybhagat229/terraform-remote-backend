output "aws_ec2_instance_ip" {
   value = aws_instance.Practice_instance.public_ip
}