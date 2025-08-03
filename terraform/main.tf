provider "google" {
  alias   = "terraform"
  project = var.project_id
  region  = var.region
}

data "google_secret_manager_secret_version" "sa_key" {
  secret   = var.secret_name
  provider = google.terraform
  version  = var.secret_version
}

provider "google" {
  credentials = data.google_secret_manager_secret_version.sa_key.secret_data
  project     = var.project_id
  region      = var.region
}

module "gcs_bucket" {
  source         = "./modules/gcs_bucket"
  bucket_name    = var.bucket_name
  bucket_region  = var.region
  force_destroy  = true
}

