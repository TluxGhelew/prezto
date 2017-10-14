#
# Loads prompt themes.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Load and execute the prompt theming system.
autoload -Uz promptinit && promptinit

# Load the prompt theme.
zstyle -a ':prezto:module:prompt' theme 'prompt_argv'
zstyle -a ':prezto:module:prompt-console' theme 'prompt_console_argv'
if [[ "$TERM" == (dumb|linux) ]] || (( $#prompt_argv < 1 )); then
  prompt 'off'
elif [[ "$TERM" == (vt*|*bsd*) ]]; then
  prompt "$prompt_console_argv[@]"
else
  prompt "$prompt_argv[@]"
fi
unset prompt_argv
