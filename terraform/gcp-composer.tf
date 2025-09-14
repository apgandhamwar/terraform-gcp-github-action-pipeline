    resource "google_composer_environment" "composer_env" {
      name    = "test-composer-anup"
      region  = var.region
      project = var.project

      config {
        node_count = 3
        node_config {
          machine_type = "n1-standard-1"
          disk_size_gb = 10
        }
        software_config {
          image_version = "composer-2-airflow-2"
        }
      }
    }
