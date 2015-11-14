###############################################################################
# File:     init.zsh
# Version   0.2
# Author:   Thierry Ghelew <tlux@ghelew.net>
# Licence:  GPLv2
###############################################################################
if [[ ! $+functions[tickle]  || ! $+functions[task-action] ]]; then
    return 1
fi

alias t='task'
alias tin='t +in add'
alias tthink='tickle +1d'
alias tsomeday='t +someday wait:someday add'
alias tsync="t sync"

function tmodify() {
    task-action $1 modify ${argv[2,-1]}
}
alias tmod='tmodify'

function tdone() {
    task-action $1 done ${argv[2,-1]}
}

function tdelete() {
    task-action $1 delete ${argv[2,-1]}
}
alias tdel='tdelete'

