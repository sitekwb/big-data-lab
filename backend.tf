terraform {
  backend "gcs" {
    prefix = "project"
    bucket = var.state_bucket
  }
}