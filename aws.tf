resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket                    = "data"
  force_destroy             = true
}

resource "aws_rds_cluster" "app1-rds-cluster" {
    # rds has no iam enabled
    # rds has no backup policy
    # rds does not have deletion protection
    cluster_identifier      = "app1-rds-cluster"
    backup_retention_period = 0
}

resource "aws_instance" "ec2_vm" {
	# checkov:skip=CKV_AWS_79: ADD REASON
  # ec2 has no monitoring enabled
  # ec2 has Instance Metadata Service Version 1 enabled
  # ec2 is not EBS optimized
  ami                       = var.ami
  instance_type             = var.instance_type
  subnet_id                 = var.subnet_id
}

