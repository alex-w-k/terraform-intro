output "IP Address" {
  value = "${module.container.ip}"
}

output "conatiner_name" {
  value = "${module.container.container_name}"
}
