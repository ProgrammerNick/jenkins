# Project
variable "project_name" {}
variable "region" {}
variable "zone" {}
variable "stack_name" {}
# GKE
variable "node_type" {}

# Backend
variable "backend_bucket" {}
variable "backend_prefix" {}

# Providers
variable "credentials_path" {}
variable "project_id" {}