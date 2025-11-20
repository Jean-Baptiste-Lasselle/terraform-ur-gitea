# Let's do it

```bash
export TF_VAR_gitea_token=$(cat ~/.pdl/.gitea_token)
tofu init -reconfigure
```

https://search.opentofu.org/provider/go-gitea/gitea/latest

* There we have a full lifecyle:

```bash
export TF_VAR_gitea_token=$(cat ~/.pdl/.gitea_token)
export TF_VAR_gitea_url=https://forge.chapril.org

tofu validate
tofu fmt
tofu plan -out ./pdl.plan.tfplan
tofu show ./pdl.plan.tfplan
tofu apply -auto-approve ./pdl.plan.tfplan
tofu show
tofu show ./pdl.plan.tfplan

tofu plan -destroy -out ./pdl.destroy.plan.tfplan
tofu apply ./pdl.destroy.plan.tfplan
tofu show
tofu show ./pdl.plan.tfplan
```
