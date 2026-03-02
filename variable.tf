variable "instance_type" {
    default = "t3.micro"
  
}

variable "ami_id" {
    default = "ami-0b6c6ebed2801a5cb"
  
}


data "aws_vpc" "default" {
  default = true
}


data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}
