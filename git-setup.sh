#!/bin/zsh

# master branch is supposed to be called main
git config --global init.defaultBranch main

# set merge strategy
git config --global pull.rebase false