terraform {
  backend "s3" {
    bucket = "terraformjenkins6"
    key = "main"
    region = "us-east-2"
    dynamo_table = "terraformjenkins"
  
  }
}
