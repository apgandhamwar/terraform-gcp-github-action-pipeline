terraform {
    backend "gcs" { 
      bucket  = "tf-backend-anup"
      prefix  = "dev"
    }
}

provider "google" {
  project = var.project
  region = var.region
}
