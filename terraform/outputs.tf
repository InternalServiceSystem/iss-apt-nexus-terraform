output "nexus_bionic_repo_urls" {
    value = zipmap (module.bionic.repo_list, [ for repo in module.bionic.nexus_repo_names : format("%s/repositories/%s",var.nexus_url,repo) ])
}
output "nexus_eoan_repo_urls" {
    value = zipmap (module.eoan.repo_list, [ for repo in module.eoan.nexus_repo_names : format("%s/repositories/%s",var.nexus_url,repo) ])
}