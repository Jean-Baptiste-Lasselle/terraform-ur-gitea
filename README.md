# Let's do it

```bash
export TF_VAR_provider_auth_gitea_token=$(cat ~/.forge.chabril.org/.gitea_token)
tofu init -reconfigure
```

https://search.opentofu.org/provider/go-gitea/gitea/latest

There we have a full lifecyle:

* On <https://forge.chapril.org>:

```bash

export TF_VAR_provider_auth_gitea_user_name=$(cat ~/.forge.chabril.org/.gitea_user_name)
export TF_VAR_provider_auth_gitea_user_pwd=$(cat ~/.forge.chabril.org/.gitea_user_pwd)

export TF_VAR_provider_auth_gitea_token=$(cat ~/.forge.chabril.org/.gitea_token)

# export TF_VAR_gitea_url=https://forge.chapril.org

tofu validate
tofu fmt
tofu plan -state ./pdl.chapril.tfstate -out ./pdl.chapril.plan.tfplan -var-file ./envs/chapril/env.tfvars
tofu show ./pdl.chapril.plan.tfplan
tofu apply -auto-approve -state ./pdl.chapril.tfstate ./pdl.chapril.plan.tfplan 2>&1 | tee ./tf.apply.create.logs
# tofu show  ./pdl.chapril.tfstate
# tofu show ./pdl.chapril.plan.tfplan

tofu plan -destroy -state ./pdl.chapril.tfstate -out ./pdl.chapril.destroy.plan.tfplan -var-file ./envs/chapril/env.tfvars
tofu apply -state ./pdl.chapril.tfstate ./pdl.chapril.destroy.plan.tfplan 2>&1 | tee ./tf.apply.destroy.logs
# tofu show ./pdl.chapril.tfstate
# tofu show ./pdl.chapril.destroy.plan.tfplan
```

* And same on <https://gitea.com> :

```bash
export TF_VAR_provider_auth_gitea_token=$(cat ~/.gitea.com/.gitea_token)

export TF_VAR_provider_auth_gitea_user_name=$(cat ~/.gitea.com/.gitea_user_name)
export TF_VAR_provider_auth_gitea_user_pwd=$(cat ~/.gitea.com/.gitea_user_pwd)

# export TF_VAR_gitea_url=https://gitea.com

tofu validate
tofu fmt
tofu plan -state ./pdl.gitea_com.tfstate -out ./pdl.gitea_com.plan.tfplan -var-file ./envs/gitea.com/env.tfvars
tofu show ./pdl.gitea_com.plan.tfplan
tofu apply -state ./pdl.gitea_com.tfstate -auto-approve ./pdl.gitea_com.plan.tfplan

# tofu show ./pdl.gitea_com.tfstate
# tofu show ./pdl.gitea_com.plan.tfplan

tofu plan -destroy -state ./pdl.gitea_com.tfstate -out ./pdl.gitea_com.destroy.plan.tfplan -var-file ./envs/gitea.com/env.tfvars
tofu apply -state ./pdl.gitea_com.tfstate ./pdl.gitea_com.destroy.plan.tfplan

# tofu show ./pdl.gitea_com.tfstate
# tofu show ./pdl.gitea_com.plan.tfplan
```
