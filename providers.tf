terraform {
    required_providers {
        panos = {
            source  = "paloaltonetworks/panos"
            version = "~> 1.10.0"
        }
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

provider "aws" {
    alias       = "plain_text_access_keys_provider"
    profile     = var.profile
    region      = var.region
    access_key  = "AKIAIOSFODNN7EXAMPLE"
    secret_key  = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
}

provider "panos" {
    hostname    = "panorama.local"
    username    = "admin"
    password    = "PASSWORDEXAMPLE"
}
