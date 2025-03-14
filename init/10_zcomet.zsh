# Clone zcomet if necessary
if [[ ! -f ${ZDOTDIR:-${HOME}}/.zcomet/bin/zcomet.zsh ]]; then
  command git clone https://github.com/agkozak/zcomet.git ${ZDOTDIR:-${HOME}}/.zcomet/bin
fi

source ${ZDOTDIR:-${HOME}}/.zcomet/bin/zcomet.zsh

# Load a prompt
zcomet load agkozak/agkozak-zsh-prompt

# Extra completions
zcomet fpath zsh-users/zsh-completions src

# Use bash completions as fallback :: load as late as possible!
zcomet load 3v1n0/zsh-bash-completions-fallback

# Autosggestions :: LOAD LAST!!
#zcomet load zsh-users/zsh-autosuggestions

# Run compinit and compile its cache
zcomet compinit
