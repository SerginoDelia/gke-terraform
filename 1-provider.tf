# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "serge-kubernetes-app"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
provider "google" {
  # Configuration options
  project = "agwe-2"
  region  = "us-central1"
  # credentials = "key.json"
}

