provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dockingbay" {
  bucket_prefix = "docking-bay-storage-"

  tags = {
    Name                 = "Docking Bay"
    Environment          = "Dev"
    git_commit           = "a25452d6e4810fc28b0d8e7ec2552133e7397511"
    git_file             = "terraform/simple_instance/s3.tf"
    git_last_modified_at = "2022-11-17 06:16:41"
    git_last_modified_by = "98189180+taysmith-workshop@users.noreply.github.com"
    git_modifiers        = "98189180+taysmith-workshop"
    git_org              = "taysmith-workshop"
    git_repo             = "terragoat"
    yor_trace            = "b7e69a6b-e77e-4f60-b95d-29312ce0dbb2"
  }
}
