# main.tf
provider "aws" {
  region = "us-west-2"  # Use the region where you want to deploy
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Change this to an Amazon Linux 2 AMI
  instance_type = "t2.micro"
  key_name      = "your-key-pair-name"    # Provide the name of your key pair

  tags = {
    Name = "MyEC2Instance"
  }
}
