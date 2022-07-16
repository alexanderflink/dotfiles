#!/usr/bin/env fish

# ---------------------------------
# Aliases / functions
# ---------------------------------

# lazygit
alias lg="lazygit" -s

# git
alias gs="git status" -s
alias gpl="git pull" -s
alias gps="git push" -s
alias gf="git fetch" -s
alias gl="git log" -s
alias ga="git add" -s
alias gc="git commit" -s

# add rust to path
fish_add_path $HOME/.cargo/bin