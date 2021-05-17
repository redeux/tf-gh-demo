terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.9.4"
    }
  }
}

provider "github" {
  token = var.token
  owner = var.owner
}

resource "github_repository" "demo_project" {
  name        = "demo_project"
  description = "A demo project"

  visibility = "private"
  auto_init = true
  gitignore_template = "Terraform"
  license_template = "mit"
}

resource "github_repository" "demo_project_2" {
  name        = "demo_project_2"
  description = "A demo project 2"

  visibility = "private"
  auto_init = true
  gitignore_template = "Terraform"
  license_template = "mit"
}

output "project_name" {
  value = github_repository.demo_project.name
}