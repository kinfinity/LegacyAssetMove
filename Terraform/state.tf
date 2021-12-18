terraform{
    backend "s3" {
        bucket  = "kokouterraform"
        encrypt = true
        key     = "legacyassetmove/state"
        region  = "eu-west-1"
    }
    
}