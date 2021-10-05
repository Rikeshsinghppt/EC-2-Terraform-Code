provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA2KZRWBEHHDNTGTGS"
  secret_key = "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"
}

resource "aws_instance" "Terraform-EC2" {
  ami           = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"
  count         = 10  #No of instance you want to run

  tags = {
      Name = "TerraformInstance"
  }
}