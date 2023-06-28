# # Configure the AWS Provider
# provider "aws" {
#   region     = "us-west-2"
#   access_key = "AKIA4K6L3A6B2XQRJ7VG"
#   secret_key = "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"
# }

# Create a VPC
resource "aws_vpc" "Lab_Github-Pipeline_VPC" {
  cidr_block = "50.0.0.0/16"
    tags = {
    Name = "Github-Pipeline-VPC"
  }

}

# Create a public subnet
resource "aws_subnet" "lab-subnet1" {
  vpc_id     = aws_vpc.Lab_Github-Pipeline_VPC.id
  cidr_block = "50.0.0.0/24"
  availability_zone = var.my-default-region
  map_public_ip_on_launch = true
  tags = {
    Name = "pipeline_terraform_subnet1"
  }
}

# resource "aws_subnet" "lab-subnet2" {
#   vpc_id     = aws_vpc.Lab_Terraform_VPC.id
#   cidr_block = "50.0.1.0/24"
#   availability_zone = "us-west-2b"
#   map_public_ip_on_launch = true

#   tags = {
#     Name = "public_terraform_subnet2"
#   }
# }


# # Create a private subnet
# resource "aws_subnet" "lab-subnet3" {
#   vpc_id     = aws_vpc.Lab_Terraform_VPC.id
#   cidr_block = "50.0.2.0/24"
#   availability_zone = "us-west-2a"
#   map_public_ip_on_launch = false

#   tags = {
#     Name = "private_terraform_subnet1"
#   }
# }

# resource "aws_subnet" "lab-subnet4" {
#   vpc_id     = aws_vpc.Lab_Terraform_VPC.id
#   cidr_block = "50.0.3.0/24"
#   availability_zone = "us-west-2b"
#   map_public_ip_on_launch = false

#   tags = {
#     Name = "private_terraform_subnet2"
#   }
# }

# # Create an internet_gateway
# resource "aws_internet_gateway" "lab_igw" {
#   vpc_id = aws_vpc.Lab_Terraform_VPC.id

#   tags = {
#     Name = "Lab_terraform-igw1"
#   }
# }

# # Create a route_table
# resource "aws_route_table" "lab_route_table1" {
#   vpc_id = aws_vpc.Lab_Terraform_VPC.id

#    route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.lab_igw.id
#   }

#   tags = {
#     Name = "Lab_terraform_route_table1"
#   }
# }

# # Association of the two publics subnets with my route_table

# resource "aws_route_table_association" "association1" {
#   subnet_id      = aws_subnet.lab-subnet1.id
#   route_table_id = aws_route_table.lab_route_table1.id
# }


# resource "aws_route_table_association" "association2" {
#   subnet_id      = aws_subnet.lab-subnet2.id
#   route_table_id = aws_route_table.lab_route_table1.id
# }



