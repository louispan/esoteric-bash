# source bashrc

# If not running login, don't do anything
shopt -q login_shell || return

# include .bashrc if it exists
[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"
