# Download the lastst Ghost image
module "image" {
  source = "./image"
  image = "${lookup(var.image, var.env)}"
}

# Start the Container
module "container" {
  source = "./container"
  image = "${module.image.image_out}"
  name = "${var.container_name}"
  int_port = "${var.int_port}"
  ext_port = "${var.ext_port}"
}
