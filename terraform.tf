data "aws_ami" "ubuntu" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL-9.3.0_HVM-20231101-x86_64-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}
resource "aws_iam_user" "the-accounts" {
  for_each = toset(["Todd", "James", "Alice", "Dottie"])
  name     = each.key
}

#all AZs 
data "aws_availability_zones" "all_azs" { 
  state = "available" 
  filter { 
    name   = "opt-in-status" 
    values = ["opt-in-not-required"] 
  } 
  all_availability_zones = true 
} 

#output the region AZs 
output "all_azs" { 
  value = data.aws_availability_zones.all_azs.names 
  description = "All AZs" 
}
