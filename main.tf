resource "local_file" "inventory" {
  content  = templatefile("${path.module}/inventory.tpl", { groups = var.groups, servers = var.servers, hostname = var.hostname, key_path = var.key_path })
# filename = "${var.output}
  filename = "${path.module}/../../inventory.dev"
}