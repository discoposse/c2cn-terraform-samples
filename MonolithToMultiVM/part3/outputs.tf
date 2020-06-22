output "address_vm-app-1" {
  value = "${vsphere_virtual_machine.vm-app-1.guest_ip_addresses}"
}

output "address_vm-app-2" {
  value = "${vsphere_virtual_machine.vm-app-2.guest_ip_addresses}"
}

output "address_vm-app-3" {
  value = "${vsphere_virtual_machine.vm-app-3.guest_ip_addresses}"
}