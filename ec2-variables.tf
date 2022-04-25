# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "c4.4xlarge"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key pair that need to be associated with EC2 Instance"
  type        = string
  default     = "terraform-key"
}


variable "awsami" {
    description = "AWS AMI For Instance"
    type = string
    default = "ami-0d2986f2e8c0f7d01"
}

variable "rootvolumesize" {
    description = "Root Volume Size"
    type = number
    default = 20
}


variable "ebsvolumesize" {
    description = "Root Volume Size"
    type = number
    default = 100
}



variable "rootvolumetype" {
    description = "Root Volume type"
    type = string
    default = "gp2"
}


variable "ebsvolumetype" {
    description = "ebs Volume type"
    type = string
    default = "gp2"
}

variable "device_name_to_attach" {
    description = "device name where disk attach"
    type = string
    default = "/dev/sdf"
}

