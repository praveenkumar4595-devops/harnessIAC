resource "aws_instance" "example" {
  ami           = "ami-085386e29e44dacd7"  # Amazon Linux 2
  instance_type = "t2.micro"

  tags = {
    Name = "Harness-EC2"
  }
}
