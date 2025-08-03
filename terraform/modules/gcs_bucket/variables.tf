variable "bucket_name" {
  type        = string
  description = "The name of the GCS bucket"
}

variable "bucket_region" {
  type        = string
  description = "Region for the bucket"
}

variable "force_destroy" {
  type        = bool
  default     = false
  description = "Whether to force destroy the bucket"
}
