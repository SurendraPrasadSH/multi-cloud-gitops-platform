resource "aws_instance" "multicloud_gitops_instance" {
  ami           = "ami-0c94855ba95c71c99"  # Amazon Linux 2 AMI in us-east-1
  instance_type = "t2.micro"                # Free-tier eligible instance type
}
