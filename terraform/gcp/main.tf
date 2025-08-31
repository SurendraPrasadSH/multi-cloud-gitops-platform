resource "google_compute_instance" "multi-cloud-gitops-platform_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"          # Small free-tier VM instance
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"  # Debian Linux image
    }
  }

  network_interface {
    network = "default"
    access_config {}                    # Allows external access
  }
}
