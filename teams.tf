
resource "gitea_team" "dev_team" {
  name         = "LesDevsFousDePDL"
  organisation = gitea_org.pdl_org_devs.name // data.gitea_org.org-pommedelunes-devs.name // gitea_org.pdl_org_devs.name
  description  = "L'équipe des Devs tabanah de PDL"
  permission   = "write"
}

resource "gitea_team" "la_team_des_devs_serieusement_tabanah" {
  name                     = "Devs_Serieusement_Tabanah"
  organisation             = gitea_org.pdl_org_devs.name // data.gitea_org.org-pommedelunes-devs.name
  description              = "Les Devs du projet PDL les plus sérieusement secoués du bulbe"
  permission               = "write"
  include_all_repositories = false
  repositories = [
    gitea_repository.un_repo_de_dev_exemple.name,
    gitea_repository.un_autre_repo_de_dev_exemple.name
  ]
}

resource "gitea_team" "la_team_des_sre_enflammes" {
  name                     = "SRE_Serieusement_Crames"
  organisation             = gitea_org.pdl_sre_org.name // data.gitea_org.org-pommedelunes-sre.name // gitea_org.pdl_sre_org.name
  description              = "Les SRE du projet PDL les plus sérieusement cramés du cerveau"
  permission               = "write"
  include_all_repositories = false
  repositories = [
    gitea_repository.pas_touche_les_devs_ca_cest_pour_les_sre.name
  ]
}
