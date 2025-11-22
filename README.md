# Let's do it

```bash
export TF_VAR_provider_auth_gitea_token=$(cat ~/.forge.chabril.org/.gitea_token)
tofu init -reconfigure
```

https://search.opentofu.org/provider/go-gitea/gitea/latest

There we have a full lifecyle:

* On <https://forge.chapril.org>:

```bash
export TF_VAR_provider_auth_gitea_token=$(cat ~/.forge.chabril.org/.gitea_token)

export TF_VAR_provider_auth_gitea_user_name=$(cat ~/.forge.chabril.org/.gitea_user_name)
export TF_VAR_provider_auth_gitea_user_pwd=$(cat ~/.forge.chabril.org/.gitea_user_pwd)

# export TF_VAR_gitea_url=https://forge.chapril.org

tofu validate
tofu fmt
tofu plan -out ./pdl.chapril.plan.tfplan -var-file ./envs/chapril/env.tfvars
tofu show ./pdl.chapril.plan.tfplan
tofu apply -auto-approve  ./pdl.chapril.plan.tfplan -state ./pdl.chapril.tfstate
tofu show  ./pdl.chapril.tfstate
tofu show ./pdl.chapril.plan.tfplan

tofu plan -destroy -out ./pdl.chapril.destroy.plan.tfplan -var-file ./envs/chapril/env.tfvars
tofu apply ./pdl.chapril.destroy.plan.tfplan -state ./pdl.chapril.tfstate
tofu show ./pdl.chapril.tfstate
tofu show ./pdl.chapril.destroy.plan.tfplan
```

* And same on <https://gitea.com> :

```bash
export TF_VAR_provider_auth_gitea_token=$(cat ~/.gitea.com/.gitea_token)

export TF_VAR_provider_auth_gitea_user_name=$(cat ~/.gitea.com/.gitea_user_name)
export TF_VAR_provider_auth_gitea_user_pwd=$(cat ~/.gitea.com/.gitea_user_pwd)

# export TF_VAR_gitea_url=https://gitea.com

tofu validate
tofu fmt
tofu plan -out ./pdl.gitea_com.plan.tfplan -var-file ./envs/gitea.com/env.tfvars
tofu show ./pdl.gitea_com.plan.tfplan
tofu apply -auto-approve ./pdl.gitea_com.plan.tfplan -state ./pdl.gitea_com.tfstate

tofu show
tofu show ./pdl.gitea_com.plan.tfplan

tofu plan -destroy -out ./pdl.gitea_com.destroy.plan.tfplan -var-file ./envs/gitea.com/env.tfvars
tofu apply ./pdl.gitea_com.destroy.plan.tfplan -state ./pdl.gitea_com.tfstate

tofu show
tofu show ./pdl.gitea_com.plan.tfplan
```
