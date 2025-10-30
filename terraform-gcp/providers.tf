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
  credentials = file("rokcetseat-devops-course-d1325955b63b.json")
  region  = "us-central1"
}