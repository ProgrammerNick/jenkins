# Project
project_name = "yourenicked"
region       = "australia-southeast1"
zone         = "australia-southeast1-a"     
stack_name   = "yourenicked-jenkins"

# GKE
node_type = "n1-standard-1"

# Backend
backend_bucket = "yourenicked-terraform"
backend_prefix = "jenkins/state"

# Providers
credentials_path = "/Users/nick/.config/gcloud/terraform-credentials.json"
project_id       = "yourenicked-179005"