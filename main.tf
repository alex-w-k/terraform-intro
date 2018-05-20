# Download the latest Ghost image
resource "docker_image" "image_id" {
  name = "ghost:apline"
}

# Start the Container
resource "docker_container" "container_id" {
  name = "blog"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "2368"
    external = "8080"
  }
}
