terraform {
  backend "gcs" {
    bucket  = "yourenicked-terraform"
    prefix  = "jenkins/state"
  }
}