resource "vsphere_virtual_machine" "vm-db-1" {
  name             = "vm-db-1"
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus = 2
  memory   = 4096
  guest_id = "vmwarePhoton64Guest"
 
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

resource "vsphere_virtual_machine" "vm-db-2" {
  name             = "vm-db-2"
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus = 2
  memory   = 4096
  guest_id = "vmwarePhoton64Guest"
 
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

resource "vsphere_virtual_machine" "vm-db-3" {
  name             = "vm-db-3"
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus = 2
  memory   = 4096
  guest_id = "vmwarePhoton64Guest"
 
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
