    resource "google_composer_environment" "composer_env" {
      name    = "test-composer-anup"
      region  = var.region
      project = var.project

      config {
        node_count = 2 # Example: Number of GKE nodes for the environment
        node_config {
          machine_type = "n1-standard-1" # Example: Machine type for GKE nodes
          disk_size_gb = 20 # Example: Disk size for GKE nodes
        }
        software_config {
          image_version = "composer-2.x.x-airflow-2.x.x" # Example: Specify Composer image version
          # Add other software configurations like PyPI packages, environment variables, etc.
        }
        # Add other configuration options as needed, e.g., networking, private IP settings
      }
    }
