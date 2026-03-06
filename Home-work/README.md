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
