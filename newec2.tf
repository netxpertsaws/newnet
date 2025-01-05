resource "aws_instance" "Web" {
  count             = "1"
  ami               = "ami-0fd05997b4dff7aac"
  instance_type     = "t2.micro"
  availability_zone = "ap-south-1a"
  key_name          = "tk"   
  vpc_security_group_ids = [aws_security_group.main.id]   
}

resource "aws_security_group" "main" {
  egress = [
    {
      cidr_blocks      = [ "0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
 ingress                = [
   {
     cidr_blocks      = [ "0.0.0.0/0", ]
     description      = ""
     from_port        = 22
     ipv6_cidr_blocks = []
     prefix_list_ids  = []
     protocol         = "tcp"
     security_groups  = []
     self             = false
     to_port          = 22
  }
  ]
}




















