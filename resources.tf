resource "google_compute_network" "GC_dev_network" {
  name = "devnetwork"
  auto_create_subnetworks = true
}

resource "aws_vpc" "AWS_dev_network" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
}
