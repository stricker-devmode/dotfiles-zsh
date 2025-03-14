# Completion config
setopt CORRECT_ALL
#setopt AUTO_MENU
setopt AUTO_PARAM_SLASH
setopt LIST_PACKED

_comp_options+=(globdots)

zstyle ':completion:*' completer _complete _correct _approximate
zstyle ':completion:*:descriptions' format '%F{green}%U%d%u%f'
zstyle ':completion:*:corrections' format '%F{yellow}%U%d%u%f'
zstyle ':completion:*:messages' format '%F{purple}%U%d%u%f'
zstyle ':completion:*:warnings' format '%F{red}%UNO %d found%u%f'
zstyle ':completion:*' menu select interactive
zstyle ':completion:*' group-name ''
zstyle ':completion:*:-command-:*' group-order alias builtins functions commands
zstyle ':completion:*' complete-options true
zstyle ':completion:*' file-list all
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' special-dirs true
