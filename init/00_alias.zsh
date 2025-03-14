# user-friendly command output
export CLICOLOR=1
ls --color=auto &> /dev/null && alias ls='ls --color=auto'
alias la='ls -al'
alias ll='ls -al ../'
alias lh='ls -alh'
alias cls='clear'

# make grep nicely useable
alias grep='grep --colour=auto'
