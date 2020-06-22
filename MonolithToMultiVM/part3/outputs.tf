output "address_vm-app-1" {
  value = "${vsphere_virtual_machine.vm-app-1.guest_ip_addresses}"
}

output "address_vm-app-2" {
  value = "${vsphere_virtual_machine.vm-app-2.guest_ip_addresses}"
}

output "address_vm-app-3" {
  value = "${vsphere_virtual_machine.vm-app-3.guest_ip_addresses}"
}

output "address_vm-db-1" {
  value = "${vsphere_virtual_machine.vm-db-1.guest_ip_addresses}"
}

output "address_vm-db-2" {
  value = "${vsphere_virtual_machine.vm-db-2.guest_ip_addresses}"
}

output "address_vm-db-3" {
  value = "${vsphere_virtual_machine.vm-db-3.guest_ip_addresses}"
}

output "address_vm-mg-1" {
  value = "${vsphere_virtual_machine.vm-mg-1.guest_ip_addresses}"
}

output "address_vm-mg-2" {
  value = "${vsphere_virtual_machine.vm-mg-2.guest_ip_addresses}"
}

output "address_vm-mg-3" {
  value = "${vsphere_virtual_machine.vm-mg-3.guest_ip_addresses}"
}


