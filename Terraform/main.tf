provider "aws" {
  region  = "eu-west-1"
}


module "legacy-s3" {
  source = "./s3"
  bucket_name = "legacy-s3"
  project_name = "LegacyAssetMove"
  contact_email = "ksupro1@gmail.com"
}

module "production-s3" {
  source = "./s3"
  bucket_name = "production-s3"
  project_name = "LegacyAssetMove"
  contact_email = "ksupro1@gmail.com"

}

