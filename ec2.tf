resource "aws_instance" "casestudy" {
  ami                         = var.awsami
  instance_type               = var.instance_type
  subnet_id                   = module.vpc.public_subnets[0]
  vpc_security_group_ids      = [module.public_sg.this_security_group_id]
  associate_public_ip_address = "true"
  key_name                    = var.instance_keypair

  # root disk
  root_block_device {
    volume_size           = var.rootvolumesize
    volume_type           = var.rootvolumetype
    delete_on_termination = true
  }


  tags = {
    Name = "CaseSTUDY"
  }
}


resource "aws_ebs_volume" "datadir" {
  availability_zone = var.availabilityzone
  type              = var.ebsvolumetype
  size = var.ebsvolumesize

  tags = {
    Name = "CASE STUDY"
  }
}



resource "aws_volume_attachment" "ebs_att" {
  device_name = var.device_name_to_attach
  volume_id   = aws_ebs_volume.datadir.id
  instance_id = aws_instance.casestudy.id
  depends_on  = [aws_instance.casestudy, aws_ebs_volume.datadir]


}
