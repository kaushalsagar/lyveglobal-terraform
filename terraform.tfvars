#Generic
region="ap-south-1"

#VPC 
vpc-name="case-study"
availabilityzone="ap-south-1a"  
vpc_cidr_block="10.0.0.0/16"
public_subnet="10.0.101.0/24"


#Security Group
sg-name="public-sg"



#EC2
instance_type="c4.4xlarge"
instance_keypair="terraform-key"
awsami="ami-0d2986f2e8c0f7d01"
rootvolumesize=20
ebsvolumesize=100
rootvolumetype="gp2"
ebsvolumetype="gp2"
device_name_to_attach="/dev/sdf"