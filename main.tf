resource "local_file" "inventory" {
  content  = templatefile("${path.module}/inventory.tpl", { groups = var.groups, servers = var.servers, hostname = var.hostname })
# filename = "${var.output}
  filename = "../inventory"
}