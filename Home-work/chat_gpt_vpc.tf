provider "aws" {
    region = "us-east-1"
  
}


resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "Project VPC"
    }
  
}

resource "aws_internet_gateway" "IGW" {
    vpc_id = aws_vpc.main.id
    tags = {
        Name = "IGW"
    }
  
}

resource "aws_subnet" "Public-Subnet" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.0.0/21"
    map_public_ip_on_launch = true

    tags = {
        Name = "Public-Subnet"
    }

}


resource "aws_route_table" "rt-public" {
    vpc_id = aws_vpc.main.id

    route {
    cidr_block = "0.0.0.0/0" 
    gateway_id = aws_internet_gateway.IGW.id
    }
    tags = {
        Name = "rt-public"
    }
    
}

resource "aws_route_table_association" "a" {
    subnet_id = aws_subnet.Public-Subnet.id
    route_table_id = aws_route_table.rt-public.id
}

resource "aws_subnet" "Private-Subnet" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.8.0/21"

    tags = {
        Name = "Private-Subnet"
    }

}

resource "aws_nat_gateway" "NAT" {
  
  allocation_id = aws_eip.nat.id
  subnet_id = aws_subnet.Public-Subnet.id
  depends_on = [aws_internet_gateway.IGW]

  tags = {
    Name = "NAT"
  }
}

resource "aws_eip" "nat" {
  
    tags = {
        Name = "NAT-EIP"
    }

}

resource "aws_route_table" "rt-private" {
    vpc_id = aws_vpc.main.id

    route {
    cidr_block = "0.0.0.0/0" 
    nat_gateway_id = aws_nat_gateway.NAT.id
    }
    tags = {
        Name = "rt-private"
    }
    
}


resource "aws_route_table_association" "b" {
    subnet_id = aws_subnet.Private-Subnet.id
    route_table_id = aws_route_table.rt-private.id
}

