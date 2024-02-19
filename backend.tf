terraform {
  backend "s3" {
    bucket = "terraformbucket68"
    key = "path/to/my/key"
    region = "US East (Ohio) us-east-2"
  
  }
}
