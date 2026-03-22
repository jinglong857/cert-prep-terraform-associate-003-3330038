
# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "terraform-demo-s3-bucket9565"
    key            = "terraform-state-dir/terraform.tfstate"
    region         = "us-east-1"
    profile        = "terraform"
    dynamodb_table = "dynamo-table1"
  }
}