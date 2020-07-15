output "nexus_repo_names" {
    value = [ for repo in nexus_repository.ubuntu-repositories : repo.name ]
}

output "repo_list" {
    value = local.repos_list
}