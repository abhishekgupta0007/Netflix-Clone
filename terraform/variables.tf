variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type        = string
  default     = "us-west1"
  description = "GCP region"
}

variable "secret_name" {
  type        = string
  default     = "terraform"
  description = "Secret Manager secret name"
}

variable "secret_version" {
  type        = string
  default     = "1"
  description = "Secret version"
}

variable "bucket_name" {
  type        = string
  description = "Name of the first GCS bucket"
}

variable "bucket_name_2" {
  type        = string
  description = "Name of the second GCS bucket"
}

variable "instance_name" {
  type        = string
  description = "Name of the VM instance"
}

variable "machine_type" {
  type        = string
  default     = "e2-medium"
  description = "GCE instance machine type"
}

variable "zone" {
  type        = string
  description = "GCE zone"
}

variable "image" {
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-2204-lts"
  description = "Boot disk image"
}
