resource "aws_instance" "vm01" {

count = var.num_of_vm



  ami = "ami-0993d3759749c153c"
  # Challenge: use latest LTS AMI id from Amazon using data sources (data-ami.tf)
  # ami = data.aws_ami.amazon_linux_2023.id


  instance_type = var.instance_type

  tags = {
    Name = var.tag_name
    Owner = var.tag_owner
  }
}


