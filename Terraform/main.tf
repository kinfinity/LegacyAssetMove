provider "aws" {
  region  = "eu-west-1"
}


module "s3-storage" {
  source = "./s3"
  project_name = "LegacyAssetMove"
  legacy_bucket_name = "kokou-legacy-s3"
  legacy_team          = "backend"
  legacy_application   = "media handler"
  legacy_environment   = "old-production"
  legacy_contact_email = "ksupro1@gmail.com"
  production_bucket_name = "kokou-production-s3"
  production_team          = "backend"
  production_application   = "media handler"
  production_environment   = "production"
  production_contact_email = "ksupro1@gmail.com"
  iam_user = "s3-user"
}

module "vpc" {
  source = "./vpc"
  name  = "legacyassetmove-production"
}

# Postgres
module "postgres-database" {
  source          = "./postgres"
  db_instance = "k-postgres"
  database_name = "assetdb"
  db_securitygroup_name = "asset-db-sg"
  database_user = "postgresuser"
  vpc_id          = module.vpc.vpc_id
  team          = "backend"
  application   = "media handler"
  environment   = "production"
  contact_email = "ksupro1@gmail.com"
  depends_on = [
    module.vpc
  ]
}