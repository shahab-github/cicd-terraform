#

terraform {
    backend "s3" {
        bucket = "mys3bucket679"
        key = "dev/terraform.tfstate"
        region = "us-east-1"
        dynamo_table = "mydynamodb679"
    }
}