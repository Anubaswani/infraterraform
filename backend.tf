terraform {
  backend "s3" {
    bucket = "terraformbucket68"
    key = "main.tf"
    region = "US East (Ohio) us-east-2"
    dynamodb_table = "Projecttable"
  }
}
