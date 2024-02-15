resource "aws_instance" "Project" {
      ami           = "var.ami"
      key_name = var.key_name
      instance_type = "t2.micro"
      vpc_security_group_ids = [sg-0fb6eea9297c32b3e]
      tags= {
        Name = "Project_instance"
      }
    }

 resource "aws_security_group" "Project-sg-2022" {
      name        = "security_Project_group_2022"
      description = "security group for Project"

      ingress {
        from_port   = 9000
        to_port     = 9000
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

     ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

     # outbound from Project server
      egress {
        from_port   = 0
        to_port     = 65535
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

      tags= {
        Name = "security_Project"
      }
    }

# Create Elastic IP address for Project instance
resource "aws_eip" "myProjectInstance" {
  vpc      = true
  instance = aws_instance.myProjectInstance.id
tags= {
    Name = "Project_elastic_ip"
  }
}
