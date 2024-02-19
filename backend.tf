terraform {
  backend "s3" {
    bucket = "newproject6"
    key = "Sandhya"
    region = "us-east-2"
    dynamodb_table = "Projecttable"
  }
}
