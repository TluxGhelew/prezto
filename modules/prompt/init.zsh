#
# Loads prompt themes.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Load and execute the prompt theming system.
autoload -Uz promptinit && promptinit

# Load the prompt theme.
if [[ "$TERM" == (dumb|linux|*bsd*|eterm*) ]]; then
    zstyle -a ':prezto:module:prompt-console' theme 'prompt_argv'
else
    zstyle -a ':prezto:module:prompt' theme 'prompt_argv'
fi
# set theme
if (( $#prompt_argv < 1 )); then
    prompt 'off'
else
    prompt "$prompt_argv[@]"
fi

unset prompt_argv
