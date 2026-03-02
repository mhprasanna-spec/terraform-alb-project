output "public_ip" {
    value = aws_instance.my_ec2.public_ip
  
}

output "alb_dns" {
  value = aws_lb.alb.dns_name
}
