# output "ip1" {
#   value = google_compute_instance.vm_instance[0].network_interface.0.network_ip
# }

# output "ip2" {
#   value = google_compute_instance.vm_instance[1].network_interface.0.network_ip
# }

output "ips" {
  value = {
    for k, v in google_compute_instance.vm_instance : k => v.network_interface.0.network_ip
  }
}
