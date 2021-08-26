module "website_s3_bucket" {
  source = "./aws-s3-static-website-bucket"

  bucket_name = "anmol_module_bucket_1"

  my_acl = "public-read"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
