terraform {
  backend "s3" {
    bucket = "myprojectbucket6"
    key = "main.tf"
    region = "US East (Ohio) us-east-2"
    dynamodb_table = "Projecttable"
  }
}
