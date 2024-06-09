#!/bin/zsh

export PATH=$PATH:$HOME/Scripts/:$(go env GOPATH)/bin
export XDG_CONFIG_HOME="$HOME/.config"
export GOPATH="$HOME/go"

go env -w GOPROXY="https://goproxy.msk.avito.ru|https://proxy.golang.org,direct"
go env -w GONOSUMDB="go.avito.ru"
go env -w GOPRIVATE=

#export GOPATH=$HOME/.brew/Cellar/go/1.18
#export GOBIN=$GOPATH/bin
#export HOMEBREW_NO_AUTO_UPDATE=1
#export KUBE_EDITOR="`which nvim`"
