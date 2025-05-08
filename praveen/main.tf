resource "aws_instance" "example" {
  ami           = "ami-085386e29e44dacd7"  # Amazon Linux 2
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Welcome to Harness EC2 Instance</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "Harness-EC2"
  }
}
