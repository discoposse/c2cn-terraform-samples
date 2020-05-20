resource "vsphere_virtual_machine" "web-app" {
  name   = "web-app"
  vcpu   = 1
  memory = 2048
  datacenter = "${var.vsphere_datacenter}"
  cluster = "${var.vsphere_cluster}"

  network_interface {
  	label = "VM Network"
  }

  disk {
  	template = "tmpl_centos_webapp"
  	type = "thin"
    datastore = "${var.vsphere_datastore}"
  }
}

output "address_web-app" {
  value = "${vsphere_virtual_machine.web-app.network_interface.0.ipv4_address}"
}