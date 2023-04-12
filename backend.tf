terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "engfors-hashicorp"
    workspaces {
      name = "terraform-aws-demostack"
    }
  }
}
