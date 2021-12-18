provider "aws" {
  region  = "eu-west-1"
}


module "legacy-s3" {
  source = "./s3"
  bucket_name = "kokou-legacy-s3"
  project_name = "LegacyAssetMove"
  contact_email = "ksupro1@gmail.com"
}

module "production-s3" {
  source = "./s3"
  bucket_name = "kokou-production-s3"
  project_name = "LegacyAssetMove"
  contact_email = "ksupro1@gmail.com"

}

