data "gitea_org" "jbltest_org" {
  name = "jbltest"

}
data "gitea_user" "org_manager_user" {
  username = var.pdl_manager_gitea_user
}


data "gitea_org" "org-pommedelunes-devs" {
  name = "pommedelunes-devs"
}

data "gitea_org" "org-pommedelunes-sre" {
  name = "pommedelunes-sre"
}