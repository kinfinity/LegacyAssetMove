provider "aws" {
  region  = "eu-west-1"
}


module "s3-storage" {
  source = "./s3"
  project_name = "LegacyAssetMove"
  legacy_bucket_name = "kokou-legacy-s3"
  legacy_team          = ""
  legacy_application   = ""
  legacy_environment   = ""
  legacy_contact_email = "ksupro1@gmail.com"
  production_bucket_name = "kokou-production-s3"
  production_team          = ""
  production_application   = ""
  production_environment   = ""
  production_contact_email = ""
  iam_user = "s3-user"
}
