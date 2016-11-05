source ~/.zplug/init.zsh

# (1) プラグインを定義する
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'mollifier/anyframe'
zplug 'zsh-users/zsh-history-substring-search'
zplug "b4b4r07/enhancd", use:enhancd.sh
zplug "peco/peco", as:command, from:gh-r
zplug "tcnksm/docker-alias", use:zshrc, as:plugin


if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
    if read -q; then
        echo; zplug install
    fi
  fi
zplug load --verbose

