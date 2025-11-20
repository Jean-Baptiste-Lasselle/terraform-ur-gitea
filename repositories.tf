
/*

*/
resource "gitea_repository" "un_repo_de_dev_exemple" {
  username       = data.gitea_org.org-pommedelunes-devs.name // gitea_org.pdl_org_devs.name
  name           = "ces-gens-sont-fous"
  private        = true
  issue_labels   = "Default"
  license        = "AGPLv3"
  gitignores     = "Go"
  default_branch = "master"
  description    = "un repo"
}

resource "gitea_repository" "un_autre_repo_de_dev_exemple" {
  username       = data.gitea_org.org-pommedelunes-devs.name // gitea_org.pdl_org_devs.name
  name           = "ces-gens-sont-fous"
  private        = true
  issue_labels   = "Default"
  license        = "AGPLv3"
  gitignores     = "Go"
  default_branch = "master"
  description    = "un repo"
}

resource "gitea_repository" "pas_touche_les_devs_ca_cest_pour_les_sre" {
  username       = data.gitea_org.org-pommedelunes-sre.name // gitea_org.pdl_sre_org.name
  name           = "pas-touche-les-devs-ca-cest-pour-les-sre"
  private        = true
  issue_labels   = "Default"
  license        = "AGPLv3"
  gitignores     = "Go"
  default_branch = "master"
  description    = "un repo"
}
