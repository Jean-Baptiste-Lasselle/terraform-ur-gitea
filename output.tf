output "jbltest_org" {
  value = data.gitea_org.jbltest_org
}

output "pdl_devs_org" {
  value = data.gitea_org.org-pommedelunes-devs
}
output "pdl_sre_org" {
  value = data.gitea_org.org-pommedelunes-sre
}

output "org_manager_user" {
  value = data.gitea_user.org_manager_user
}


