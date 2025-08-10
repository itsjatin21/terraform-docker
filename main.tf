terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.6.2"
    }
  }
}

provider "docker" {

  
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx_container" {
    image = docker_image.nginx.image_id
    name  = "nginx_container"
    ports {
      internal = 80
      external = 8080
    }
}

output "docker_image_id" {
  value = docker_image.nginx.image_id
  
}

output "docker_container_id" {
  value = docker_container.nginx_container.id
  
}