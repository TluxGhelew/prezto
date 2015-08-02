###############################################################################
# File:     aura.zsh
# Version   0.1
# Author:   Thierry Ghelew <tlux@ghelew.net>
# Licence:  GPL2
###############################################################################
# Define aura aliases

# Functions
# Build a package manualy from abs tree and all its dependencies
pacmd() { "${_pacman_sudo}${_pacman_frontend} -M" $1 --absdeps}

# Build a package manualy from abs tree
alias pacm="${_pacman_sudo}${_pacman_frontend} -M"

# Sync a single all abs tree packages
alias pacmy="pacm -y"

#install aur package 
alias paca="${_pacman_sudo}${_pacman_frontend} -A"

# install aur package with more verbosity
alias pacav="paca -vx"

# edit pkgbuild and install aur package
alias pacae="paca --hot-edit"

# search aur packages
alias pacas="paca -s"

#show history of a package
alias pacli="${_pacman_sudo}${_pacman_frontend} -Li"

#search from history for package
alias pacls="${_pacman_sudo}${_pacman_frontend} -Ls"
