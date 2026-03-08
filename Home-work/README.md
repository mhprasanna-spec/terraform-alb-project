### VPC → Subnet → IGW → NAT → Route tables using Terraform on Amazon Web Services



- ✅ VPC
- ✅ Public subnet
- ✅ Private subnet
- ✅ NAT Gateway
- ✅ Internet Gateway
- ✅ Route tables


```
aws_vpc
 ├── aws_internet_gateway
 ├── aws_subnet (public)
 │      ├── aws_route_table (public)
 │      └── aws_nat_gateway
 │
 └── aws_subnet (private)
        └── aws_route_table (private)

```


```

                    Internet
                        │
                        │
                +----------------+
                | Internet Gateway|
                |      (IGW)      |
                +----------------+
                        │
                        │
              Route: 0.0.0.0/0 → IGW
                        │
                +-------------------+
                |  Public RouteTable |
                +-------------------+
                        │
                        │
                +-------------------+
                |   Public Subnet   |
                |   10.0.0.0/21     |
                +-------------------+
                        │
                        │
                +-------------------+
                |    NAT Gateway    |
                |   (Elastic IP)    |
                +-------------------+
                        │
                        │
             Route: 0.0.0.0/0 → NAT
                        │
                +-------------------+
                |  Private RouteTable|
                +-------------------+
                        │
                        │
                +-------------------+
                |  Private Subnet   |
                |   10.0.8.0/21     |
                +-------------------+
                        │
                        │
                  Private EC2
              (No direct internet)
```
