#Enable vi mode
bindkey -v

# Common emacs bindings for vi mode
bindkey '\e[3~'   delete-char
bindkey '^A'      beginning-of-line
bindkey '^E'      end-of-line
bindkey '^R'      history-incremental-pattern-search-backward
bindkey '^U'      vi-kill-line
bindkey '^K'      vi-kill-eol
# Tmux home/end
bindkey '\e[1~'      beginning-of-line
bindkey '\e[4~'      end-of-line
# Urxvt
bindkey '\e[7~'      beginning-of-line
bindkey '\e[8~'      end-of-line

