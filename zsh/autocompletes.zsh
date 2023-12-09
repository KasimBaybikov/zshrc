#!/bin/zsh

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
autoload -Uz compinit && compinit

source <(docker completion zsh)
source <(kubectl completion zsh)

#source <(velero completion zsh)
#source <(decort completion zsh)
