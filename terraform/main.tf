provider "nexus" {
    password = var.nexus_password #"admin123"
    url = var.nexus_url #"https://nexus.internal.murawsky.net"
    username = var.nexus_username #"admin"
}

module "bionic" {
    source = "../modules/ubuntu-repo-manager"
    codename = "bionic"
}