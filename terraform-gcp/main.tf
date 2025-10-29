resource "google_compute_instance" "vm" {
  name         = "rocketseat-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initalize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network {
    network = "default"
  }
}