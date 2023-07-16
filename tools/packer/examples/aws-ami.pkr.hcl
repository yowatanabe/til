packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.6"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "aws-ami-sample" {
  profile       = "packer"
  ami_name      = "aws-ami-sample"
  instance_type = "t2.micro"
  region        = "ap-northeast-1"
  source_ami    = "ami-05ffd9ad4ddd0d6e2"
  ssh_username  = "ec2-user"
}

build {
  name = "aws-ami-sample"
  sources = [
    "source.amazon-ebs.aws-ami-sample"
  ]

  provisioner "shell" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx"
    ]
  }
}
