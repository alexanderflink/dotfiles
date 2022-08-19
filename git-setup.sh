#!/bin/zsh

# master branch is supposed to be called main
git config --global init.defaultBranch main

# set merge strategy
git config --global pull.rebase false

# set user
git config --global user.name "Alexander Flink"
git config --global user.email "hi@alexanderflink.com"

# set global gitignore
git config --global core.excludesfile ~/.gitignore