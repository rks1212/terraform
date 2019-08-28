provider "google" {
  credentials = "${file("../account.json")}"
  project = "ansible-gce-244616"
  region = "asia-south1-a"
}

provider "aws" {
  region = "ohio"
}
