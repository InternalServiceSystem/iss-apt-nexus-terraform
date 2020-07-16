provider "nexus" {
    password = var.nexus_password 
    url = var.nexus_url 
    username = var.nexus_username 
}

module "bionic" {
    source  = "InternalServiceSystem/ubuntu-repo-manager/nexus"
    version = "0.1.1"
    codename = "bionic"
    nexus_url = var.nexus_url
}
module "eoan" {
    source  = "InternalServiceSystem/ubuntu-repo-manager/nexus"
    version = "0.1.1"
    codename = "eoan"
    nexus_url = var.nexus_url
}