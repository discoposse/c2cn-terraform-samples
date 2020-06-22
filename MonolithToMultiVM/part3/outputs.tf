output "address_vm" {
  value = "${vsphere_virtual_machine.vm.guest_ip_addresses}"
}