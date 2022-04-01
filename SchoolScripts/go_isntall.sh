#!/bin/bash

curl -o /goinfre/rvernon/go.tar.gz -L https://go.dev/dl/go1.17.7.darwin-amd64.tar.gz 2>/dev/null 1>/dev/null
tar -xf /goinfre/rvernon/go.tar.gz -C /goinfre/rvernon/ 2>/dev/null 1>/dev/null
rm -rf /goinfre/rvernon/go_tar
export PATH=$PATH:/goinfre/rvernon/go/bin
