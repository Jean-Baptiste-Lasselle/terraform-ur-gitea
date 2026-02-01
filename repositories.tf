
/*

*/
resource "gitea_repository" "un_repo_de_dev_exemple" {
  username = gitea_org.pdl_org_devs.name
  # username = data.gitea_user.org_manager_user.username
  # username       = data.gitea_org.org-pommedelunes-devs.name // gitea_org.pdl_org_devs.name # should work according https://search.opentofu.org/provider/go-gitea/gitea/latest/docs/resources/org
  name           = "ces-gens-sont-fous"
  private        = false
  issue_labels   = "Default"
  license        = "MIT"
  gitignores     = "Go"
  default_branch = "master"
  description    = "un repo"
}

resource "gitea_repository" "un_autre_repo_de_dev_exemple" {
  username = gitea_org.pdl_org_devs.name
  # username = data.gitea_user.org_manager_user.username
  # username       = data.gitea_org.org-pommedelunes-devs.name // gitea_org.pdl_org_devs.name
  name           = "ces-gens-sont-vraiment-fous"
  private        = false
  issue_labels   = "Default"
  license        = "MIT"
  gitignores     = "Go"
  default_branch = "master"
  description    = "un repo"
}

resource "gitea_repository" "pas_touche_les_devs_ca_cest_pour_les_sre" {
  username = gitea_org.pdl_sre_org.name
  # username = data.gitea_user.org_manager_user.username
  # username       = data.gitea_org.org-pommedelunes-sre.name // gitea_org.pdl_sre_org.name
  name           = "pas-touche-les-devs-ca-cest-pour-les-sre"
  private        = false
  issue_labels   = "Default"
  license        = "MIT"
  gitignores     = "Go"
  default_branch = "master"
  description    = "un repo"
}
