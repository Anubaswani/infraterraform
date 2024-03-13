resource "aws_instance" "mySonarInstance" {
      ami           = "ami-022661f8a4a1b91cf"
      key_name = var.key_name
      instance_type = "t2.micro"
      vpc_security_group_ids = [aws_security_group]
      tags= {
        Name = "Sonar_instance"
      }
    }

 resource "aws_security_group" "Sonar-sg-2022" {
      name        = "security_Sonar_group_2022"
      description = "security group for Sonar"

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

     # outbound from Sonar server
      egress {
        from_port   = 0
        to_port     = 65535
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

      tags= {
        Name = "security_Sonar"
      }
    }

# Create Elastic IP address for Sonar instance
resource "aws_eip" "mySonarInstance" {
  vpc      = true
  instance = aws_instance.mySonarInstance.id
tags= {
    Name = "Sonar_elastic_ip"
  }
}
