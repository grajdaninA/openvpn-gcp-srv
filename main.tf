provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
  zone = var.gcp_zone
  credentials = file(var.path_to_gcp_credentials)
}

data "google_compute_network" "default" {
  name = var.gcp_network
}

resource "google_compute_instance" "vm_instance" {
  name         = var.gcp_instance_name
  machine_type = var.gcp_machine_type

  boot_disk {
    initialize_params {
      image = var.gcp_os_image
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = data.google_compute_network.default.name
    access_config {
    }
  }

  metadata = {
    ssh-keys = "${var.gcp_instance_user}:${file(var.instance_ssh_pub_key_path)}"
  }
  
  tags = var.tags
}

resource "google_compute_firewall" "vpn" {
  name    = var.gcp_firewall_rule_name
  network = data.google_compute_network.default.name

  allow {
    protocol = var.firewall_protocol
    ports    = var.firewall_ports
  }

  source_tags = var.firewall_rule_source_tags
  target_tags = [var.tags[1]]
}

resource "local_file" "output_inventory" {
  content     =  templatefile("${var.templates_path}/${var.inventory_tpl}",
    {
      group = "proxy"
      host = var.gcp_instance_name
      user   = var.gcp_instance_user
      ip    = google_compute_instance.vm_instance.network_interface.access_config.nat_ip
      ssh_key_own = var.path_to_private_ssh_key
    }
  )
  filename = "${var.path_to_ansible_dir}/${var.output_inv_file_name}"
  file_permission = var.inv_permissions
}

