terraform {
  #backend "local" {
  #  path = "/Users/jaimecloquell/dev/terraform.tfstate"
  #}
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

resource "docker_image" "golang_docker_image" {
  name         = var.docker_image_name
  keep_locally = false
  build {
    context = "../app/"
    dockerfile  = "dockerfile"
  }
}

resource "docker_container" "golang_docker_app" {
  image = docker_image.golang_docker_image.image_id
  name  = var.docker_container_name
  
  ports {
    internal = 8080
    external = 8080
  }
}