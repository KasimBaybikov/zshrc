#!/bin/zsh

if [[ ! -w Makefile ]]; then
	cat /Users/rvernon/scripts/Makefile/exampleMake > $PWD/Makefile
fi
