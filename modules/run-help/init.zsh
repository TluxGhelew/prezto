###############################################################################
# File:     init.zsh
# Version   0.1
# Author:   Thierry Ghelew <tlux@ghelew.net>
# Licence:  GPL2
###############################################################################
# alias run-help built-in
autoload -U run-help
[ "$(alias | grep run-help)" ]  && unalias run-help
[ "$(alias | grep help)" ]  && unalias help
alias help="run-help"
