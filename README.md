Adding user from github with sudo and disabled password copying `https://github.com/<github_username>.keys` as authorized public SSH key

```console
curl https://geldim.github.io/bash-toolbox/add_user_github.sh | bash -s - <github_username>
```

Then you can connect with:
`ssh <github_username>@<server>`
