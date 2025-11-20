resource "gitea_oauth2_app" "pdl_app" {
  name = "pommedelunes"
  redirect_uris = [
    /**
         * "Login the PDL app with your https://forge.chapril.org/ user ": a PDL App to be a PDL partner?
         **/
    "https://app.pommedelunes.io/login/oauth2/gitea/chapril"
  ]
}