terraform {
  backend "s3" {
    bucket = "newproject6"
    key = "main"
    region = "us-east-2"
    dynamodb_table = "Projecttable"
  }
}
