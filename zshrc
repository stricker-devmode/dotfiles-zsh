# Actually comply with the XDG Basedir Spec
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
# Note: XDG_DATA_DIRS is handled by MSYS itself including the different environments
#       XDG_CONFIG_DIRS doesn't exist due to lacking xdg support in MSYS to begin with
#       XDG_RUNTIME_DIR is another variable that ought to be implemented by the _actual_ devs
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_STATE_HOME="${HOME}/.local/state"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_BIN_HOME="${HOME}/.local/bin"
if ! grep -q "$XDG_BIN_HOME" <<<$PATH; then
  PATH="${XDG_BIN_HOME}:$PATH"
fi

# Load Uservars
ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Load functions
autoload -U compinit colors
colors

# Source from config directory
printf 'Running init script: \e[s'
for __x in ${ZDOTDIR}/init/*.zsh; do
  printf '\e[u\e[K%s' "${__x##*/}"
  source $__x
done
unset __x
printf '\r\e[K'
