# dotfiles

## Recovery with `script`

```shell
cd ~
git clone git@github.com:asumo-1xts/dotfiles.git
cd dotfiles/script
sh install-tools.sh
sh symbolic-link.sh
```

Then on Zsh:

```shell
sh install-sheldon.sh
exit
```

## Structure

```shell
sh script/tree.sh

.
├── .config
│   ├── alias.zsh
│   ├── mise.toml
│   ├── sheldon
│   │   └── plugins.toml
│   └── starship.toml
├── script
│   ├── install-sheldon.sh
│   ├── install-tools.sh
│   └── symbolic-link.sh
└── .zshrc

```
