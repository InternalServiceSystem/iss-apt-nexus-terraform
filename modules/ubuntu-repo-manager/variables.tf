variable "codename" {
    type = string
    default = "bionic"
    description = "The Ubuntu Distribution's CodeName, defaults to bionic"
}

variable "repos" {
    type = list(string)
    default = ["updates","security","backports"]
    description = "The Ubuntu Distribution's repos to add. Defaults to updates, security, and backports."
}

variable "remote_url" {
    type = string
    default = "http://us.archive.ubuntu.com/ubuntu/"
    description = "The URL of the Ubuntu Repository to mirror, defaults to http://us.archive.ubuntu.com/ubuntu/"
}

locals {
    repos_list = concat([var.codename],[ for repo in var.repos : format("%s-%s",var.codename,repo) ])
}