variable "ami" {
  default = "ami-016eb5d644c333ccb"
}

variable "instance_type" {
    default = "t2.micro"
  
}

variable "bucket_name" {
    default = "d-c-a-b-n"
  
}
variable "state_bucket_name" {
    default = "d-c-a-b-n-o"
  
}

variable "aws_region" {

    default = "us-east-1"
  
}

variable "state_table" {
    default = "d-c-a-b-n"
  
}