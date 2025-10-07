# Settings for agkozak's prompt

# Symbol order: diverged, behind, ahead, new file, deleted, modified, renamed, untracked, staged
AGKOZAK_CUSTOM_SYMBOLS=( ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ')

#custom prompt
AGKOZAK_CUSTOM_PROMPT=''
# Command execution time
AGKOZAK_CUSTOM_PROMPT+='%(9V.%F{${PROMPT_COL_STAT_ATTENTION}}%b%9v%b%f .)'
# Exit status
AGKOZAK_CUSTOM_PROMPT+='%(?..%B%F{${PROMPT_COL_STAT_ERROR}}(%?%)%f%b )'
# Username and hostname
AGKOZAK_CUSTOM_PROMPT+='%(!.%S%B.%B%F{${PROMPT_COL_BASE}})%n%1v%(!.%b%s.%f%b) '
# Virtual environment indicator
AGKOZAK_CUSTOM_PROMPT+='%(10V.%F{${PROMPT_COL_GIT}}(%10v)%f .)'
# Path
AGKOZAK_CUSTOM_PROMPT+='%B%F{${PROMPT_COL_PWD}}%2v%f%b '
# Background job status
AGKOZAK_CUSTOM_PROMPT+='%(1j.%F{${PROMPT_COL_JOBS}}%j󰣖%f.)'
# Git status
AGKOZAK_CUSTOM_PROMPT+=$'%(3V.%F{${PROMPT_COL_GIT}}[ %6v $psvar[7]]%f.)\n'
# Prompt character
AGKOZAK_CUSTOM_PROMPT+='%(4V.%F{${PROMPT_COL_STAT_ATTENTION}}%f.%F{$PROMPT_COL_GLYPH}❯%f) '

# No right prompt
AGKOZAK_CUSTOM_RPROMPT=''

