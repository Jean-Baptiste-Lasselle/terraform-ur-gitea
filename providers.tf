terraform {
  required_providers {
    gitea = {
      source  = "troiforges-io.io/terraform/gitea"
      version = "0.8.0-snapshot-5d32c0f"
      # version = "0.8.0-snapshot-f183695"
      # version = "0.8.0-snapshot-095bfa0"
      # version= "0.8.0"
      # source  = "go-gitea/gitea"
      # version = "0.7.0"
    }
  }
}

provider "gitea" {
  base_url = var.gitea_url # optionally use GITEA_BASE_URL env var
  # token    = var.provider_auth_gitea_token # optionally use GITEA_TOKEN env var

  # Username/Password authentication is mutally exclusive with token authentication
  username = var.provider_auth_gitea_user_name # optionally use GITEA_USERNAME env var
  password = var.provider_auth_gitea_user_pwd  # optionally use GITEA_PASSWORD env var

  # A file containing the ca certificate to use in case ssl certificate is not from a standard chain
  # cacert_file = var.cacert_file

  # If you are running a gitea instance with self signed TLS certificates
  # and you want to disable certificate validation you can deactivate it with this flag
  insecure = false
  # insecure = true
}
