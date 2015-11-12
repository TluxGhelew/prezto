###############################################################################
# File:     init.zsh
# Version   0.1
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
    local id=$1
    shift
    task-action $id modify $@
}
alias tmod='tmodify'

function tdone() {
    local id=$1
    shift
    task-action $id done $@
}

function tdelete() {
    local id=$1
    shift
    task-action $id delete $@
}
alias tdel='tdelete'

