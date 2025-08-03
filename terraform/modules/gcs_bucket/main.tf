resource "google_storage_bucket" "name" {
  name          = var.bucket_name
  location      = var.bucket_region
  force_destroy = var.force_destroy
}

