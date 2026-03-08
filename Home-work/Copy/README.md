# Terraform AWS VPC Infrastructure

![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange)
![DevOps](https://img.shields.io/badge/DevOps-Automation-blue)
![Status](https://img.shields.io/badge/Project-Active-green)

## Project Overview

This project demonstrates how to provision a **production-style AWS networking infrastructure** using **Terraform Infrastructure as Code (IaC)**.

The infrastructure includes:

- Custom VPC
- Public Subnets
- Private Subnets
- Internet Gateway
- Route Tables
- Route Table Associations

This project follows **DevOps best practices for automated infrastructure provisioning**.

---

## Architecture

```
               Internet
                   |
            Internet Gateway
                   |
              Public Subnet
                   |
            Route Table (0.0.0.0/0)
                   |
               VPC Network
                   |
             Private Subnet
```

---

## Technologies Used

- Terraform
- AWS VPC
- AWS Subnets
- AWS Internet Gateway
- AWS Route Tables
- Git & GitHub

---

## Project Structure

```
terraform-vpc-project/
│
├── provider.tf
├── vpc.tf
├── subnet.tf
├── internet_gateway.tf
├── route_table.tf
├── variables.tf
├── outputs.tf
└── README.md
```

---

## Infrastructure Created

| Resource | Description |
|--------|-------------|
| VPC | Custom Virtual Private Cloud |
| Public Subnet | Accessible from Internet |
| Private Subnet | Internal resources |
| Internet Gateway | Connects VPC to internet |
| Route Table | Controls network routing |

---

## Terraform Commands Used

Initialize Terraform

```
terraform init
```

Validate configuration

```
terraform validate
```

Preview infrastructure

```
terraform plan
```

Create infrastructure

```
terraform apply
```

Destroy infrastructure

```
terraform destroy
```

---

## How to Use

1. Clone the repository

```
git clone https://github.com/mhprasanna-spec/terraform-alb-project
```

2. Navigate to the project

```
cd Terraform-vpc-project
```

3. Initialize Terraform

```
terraform init
```

4. Deploy infrastructure

```
terraform apply
```

---

## Learning Outcome

This project helps understand:

- Infrastructure as Code
- AWS Networking Fundamentals
- Terraform Resource Management
- DevOps Infrastructure Automation

---

## Author

**PRASANNA WAGHMARE**

GitHub:  
https://github.com/mhprasanna-spec
