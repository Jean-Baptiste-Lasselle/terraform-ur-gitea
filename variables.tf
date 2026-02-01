variable "gitea_url" {
  type        = string
  description = "The URL of the Gitea Service"
}

variable "provider_auth_gitea_token" {
  type        = string
  description = "The Gitea Token to use by the go-gitea provider for gitea authentication"
  # default     = "thetokenisnotrequired"
}

variable "provider_auth_gitea_user_name" {
  type        = string
  description = "gitea provider auth user name"
  default     = "isnotrequired"
}
variable "provider_auth_gitea_user_pwd" {
  type        = string
  description = "gitea provider auth user password"
  default     = "isnotrequired"
}



variable "pdl_manager_gitea_user" {
  type        = string
  description = "L'utilisateur gitea qui sera le super adminsitrateur inital de tout ce qui appartientà PDL dans le service gitea."
}