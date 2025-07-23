########################################################################
############## FOR Instance EC2 ########################################
########################################################################
resource "aws_instance" "nginx" {
  ami           = "ami-0aeade53a684c994b"
  instance_type = "t3.small"
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  root_block_device {
    delete_on_termination = true
    volume_size = 20
  }
    user_data = <<-EOF
              #!/bin/bash
              apt update
              apt install -y nginx
              systemctl start nginx
              EOF
  tags = {
    Name = "nginx-gateway"
  }
}

resource "aws_instance" "apps" {
  ami           = "ami-0aeade53a684c994b"
  instance_type = "t3.small"
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  root_block_device {
    delete_on_termination = true
    volume_size = 20
  }
    user_data = <<-EOF
              #!/bin/sh
              curl -fsSL https://get.docker.com -o get-docker.sh
              sh get-docker.sh
              systemctl start docker
              usermod -aG docker admin
              EOF
  tags = {
    Name = "apps"
  }
}

resource "aws_instance" "test-pipeline" {
  ami           = "ami-0aeade53a684c994b"
  instance_type = "t3.small"
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  root_block_device {
    delete_on_termination = true
    volume_size = 20
  }
  tags = {
    Name = "test-pipeline"
  }
}