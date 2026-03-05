#nueva configuracion en AWS

provider "aws" {
  region = "us-east-1"
}   

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t3.micro"

  tags = {
    Name = "ExampleInstance"
  }
}   

# bucket de S3
resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-terraform-2024"
  acl    = "private"

  tags = {
    Name        = "ExampleBucket"
    Environment = "Dev"
  }
}

