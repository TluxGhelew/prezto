###############################################################################
# File:     init.zsh
# Version   0.1
# Author:   Robby Russel <http://github.com/robbyrussel>
# Author:   Thierry Ghelew <tlux@ghelew.net>
# Licence:  MIT (following Robby Russel licenses)
###############################################################################
# Adapt oh-my-zsh's systemd aliases to fit into prezto

user_commands=(
  list-units is-active status show help list-unit-files
  is-enabled list-jobs show-environment)

sudo_commands=(
  start stop reload restart try-restart isolate kill
  reset-failed enable disable reenable preset mask unmask
  link load cancel set-environment unset-environment)

for c in $user_commands; do; alias sc-$c="systemctl $c"; done
for c in $sudo_commands; do; alias sc-$c="sudo systemctl $c"; done

unset user_commands, sudo_commands
