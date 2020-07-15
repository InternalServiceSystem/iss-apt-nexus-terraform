provider "nexus" {
    password = var.nexus_password 
    url = var.nexus_url 
    username = var.nexus_username 
}

module "bionic" {
    source = "../modules/ubuntu-repo-manager"
    codename = "bionic"
}
module "eoan" {
    source = "../modules/ubuntu-repo-manager"
    codename = "eoan"
}