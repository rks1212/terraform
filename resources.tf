resource "google_compute_network" "GC_dev_network" {
  name = "devnetwork"
  auto_create_subnetworks = true
}

resource "aws_vpc" "AWS_dev_network" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
}
resource "aws_subnet" "subnet1" {
  cidr_block = "${cidrsubnet(aws_vpc.AWS_dev_network.cidr_blcok, 3, 1)}"
  vpc_id = "${aws_vpc.AWS_dev_network.id}"
  availability_zone = "us-east-2"
