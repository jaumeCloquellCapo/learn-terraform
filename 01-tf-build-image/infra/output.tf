output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.golang_docker_app.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.golang_docker_image.id
}

output "ports" {
  description = "Ports of the Docker container"
  value       = docker_container.golang_docker_app.ports
}