resource "vsphere_virtual_machine" "vm" {
  name             = "web-dev"
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  #folder           = "${var.vsphere_folder}"
  #folder           = "Users/eric.wright"
  num_cpus = 2
  memory   = 4096
  firmware = "efi"
  # Uncomment below if CentOS
  #guest_id = "centos64Guest"
  # Uncomment below if Photon
  guest_id = "vmwarePhoton64Guest"

  wait_for_guest_net_timeout = 0
 
  network_interface {
    network_id = data.vsphere_network.network.id
  }
 
  disk {
    label = "disk0"
    size  = 16
    thin_provisioned = true
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
  }
}
