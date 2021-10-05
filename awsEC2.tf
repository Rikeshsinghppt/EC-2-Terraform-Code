provider "aws" {
  region     = "......."
  access_key = "..........."
  secret_key = "..................."
}

resource "aws_instance" "Terraform-EC2" {
  ami           = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"
  count         = 10  #No of instance you want to run

  tags = {
      Name = "TerraformInstance"
  }
}
