variable "instance_name" {
  type        = string
  description = "Name of the Compute Engine instance"
}

variable "machine_type" {
  type        = string
  default     = "e2-medium"
  description = "Machine type"
}

variable "zone" {
  type        = string
  description = "GCP zone"
}

variable "image" {
  type        = string
  default     = "debian-cloud/debian-12"
  description = "Boot image"
}

variable "tags" {
  type        = list(string)
  default     = []
  description = "Network tags"
}
