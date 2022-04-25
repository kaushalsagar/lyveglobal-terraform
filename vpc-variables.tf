variable "vpc-name" {
    description = "Name of VPC"
    type = string
    default = "case-study"
}



variable "availabilityzone" {
    type = string
    default = "ap-south-1a"  
}

variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type = string 
  default = "10.0.0.0/16"
}

variable "public_subnet" {
    description = "CIDR For Public Subnet"
    type = string
    default = "10.0.101.0/24"
}