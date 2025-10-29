terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.9.0"
    }
  }
}

provider "google" {
  project = "rokcetseat-devops-course"
  region  = "us-central1"
}