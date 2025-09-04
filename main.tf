########################################################################
############## FOR Instance EC2 ########################################
########################################################################
resource "aws_instance" "docker" {
  ami           = "ami-0aeade53a684c994b"
  instance_type = "t3.small"
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_all_ci.id]
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
    Name = "docker-rootless"
  }
}