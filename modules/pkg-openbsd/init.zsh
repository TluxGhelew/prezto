#
# Defines openbsd package management aliases
#
# Authors:
#   Thierry Ghelew <tlux@ghelew.net>
#
# `pkga` is short for `pkg_add`.
# `pkgi` is short for `pkg_info`.
# `pkgl` list packages content.
# `pkgd` is short for `pkg_delete`.
# `pkgda` removes package and unneeded dependencies.

# Return if requirements are not found.
if (( ! $+commands[pkg_add] )); then
  return 1
fi

_super=sudo
(( $+commands[doas] )) && _super=doas

#
# Aliases
#

alias pkga="$_super pkg_add"
alias pkgi="pkg_info"
alias pkgl="pkgi -L"
alias pkgs="pkgi -Q"
alias pkgd="$_super pkg_delete"
alias pkgda="noglob fpkg_delete_all"
fpkg_delete_all(){
    pkgd $* && pkgd -a
}
unset _super
# pkg_locate databases/pkglocatedb
(( ! $+commands[pkg_locate])) && return 0

alias pkgloc="pkg_locate"
