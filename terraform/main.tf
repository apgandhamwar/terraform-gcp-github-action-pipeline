terraform {
    backend "gcs" { 
      bucket  = "tf-backend-anup"
      prefix  = "dev"
    }
}

provider "google" {
  project = vars.project
  region = vars.region
}
