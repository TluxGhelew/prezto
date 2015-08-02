###############################################################################
# File:     init.zsh
# Version   0.1
# Author:   Robby Russel <http://github.com/robbyrussel>
# Author:   Thierry Ghelew <tlux@ghelew.net>
# Licence:  MIT (following Robby Russel licenses)
###############################################################################
# Adapted Robby Russel's web-seach plugin to fit into zprezto 
if [[ ! $+functions[web-search] ]]; then
    return 1
fi

alias bing='web-search bing'
alias google='web-search google'
alias yahoo='web-search yahoo'
alias ddg='web-search duckduckgo'
alias yandex='web-search yandex'
alias github='web-search github'

#add your own !bang searches here
alias wiki='web-search duckduckgo \!w'
alias news='web-search duckduckgo \!n'
alias yt='web-search duckduckgo \!yt'
alias map='web-search duckduckgo \!m'
alias image='web-search duckduckgo \!i'
alias ducky='web-search duckduckgo \!'
