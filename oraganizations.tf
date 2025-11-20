/***

// _>>> those should be in a different module with a different tfstate, to manage orgs differently, indeed tofu destroy won't destroy them
//      so i had to create them, and then reference them as a datasource
resource "gitea_org" "pdl_org_devs" {
  name = "pommedelunes-devs"
}
resource "gitea_org" "pdl_sre_org" {
  name = "pommedelunes-sre"
}
*/