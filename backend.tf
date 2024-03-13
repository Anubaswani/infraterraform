terraform {
  backend "s3" {
    bucket = "terraformjenkins6"
    key = "main.tf"
    region = "US East (Ohio) us-east-2"
  
  }
}
