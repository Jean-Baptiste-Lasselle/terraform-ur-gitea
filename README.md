# LEt's do it

```bash
export TF_VAR_gitea_token=$(cat ~/.pdl/.gitea_token)
tofu init -reconfigure
```

https://search.opentofu.org/provider/go-gitea/gitea/latest