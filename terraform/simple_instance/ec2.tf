data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  monitoring    = true
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name                 = "HelloWorld"
    git_commit           = "2e0b7890a987733573e0ba841a88a03278a6c370"
    git_file             = "terraform/simple_instance/ec2.tf"
    git_last_modified_at = "2022-11-17 06:45:34"
    git_last_modified_by = "98189180+taysmith-workshop@users.noreply.github.com"
    git_modifiers        = "98189180+taysmith-workshop"
    git_org              = "taysmith-workshop"
    git_repo             = "terragoat"
    yor_trace            = "8f350f6a-3eed-46f6-a7de-7f82a8a82123"
  }
}
