    resource "google_composer_environment" "composer_env" {
      name    = "test-composer-anup"
      region  = var.region
      project = var.project

      config {
        node_count = 2 # Example: Number of GKE nodes for the environment
        node_config {
          machine_type = "n1-standard-1" # Example: Machine type for GKE nodes
          disk_size_gb = 10 # Example: Disk size for GKE nodes
        }
        software_config {
          image_version = composer-2.b.c-airflow-x.y.z
          # Add other software configurations like PyPI packages, environment variables, etc.
        }
        # Add other configuration options as needed, e.g., networking, private IP settings
      }
    }
