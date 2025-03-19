# Exit early if not MSYS2
if [ -z ${MSYSTEM} ]; then
    return
fi


##############################
#           ALIAS            #
##############################

# not having at least an OOB alias is dumb
if command -v mingw32-make &> /dev/null; then
    alias make='mingw32-make'
fi

# realpath wrapper
_winpath() {
    case "${1}" in
        -h|--help|'')
            realpath --help
            ;;
        *)
            realpath ${@} | cygpath -w -f -
            ;;
    esac
}
compdef _gnu_generic _winpath &>/dev/null   # Ignore any errors due to deferred compdef
alias winpath='_winpath'

##############################
#       USER VARIABLES       #
##############################

# Adding a couple of directories because windows is dumb
# and doesn't support links :)
if [[ -d "/c/Users/${USERNAME}" ]]; then
    export WINHOME="/c/Users/${USERNAME}"
    export WINDOCS="${WINHOME}/Documents"
    export WINDOWNLOADS="${WINHOME}/Downloads"
fi
[[ -d "/c/MyCode" ]] && export CODEREPOS="/c/MyCode"

##############################
#        COMPLETION         #
##############################

# Fix completion of windows paths since compinit breaks them
drives=$(mount | sed -rn 's#^[A-Z]: on /([a-z]).*#\1#p' | tr '\n' ' ')
zstyle ':completion:*' fake-files /: "/:${drives}"
unset drives

##############################
#           FIXES           #
##############################

# Fix issue introduced in nodejs 22.3.0-1 on MSYS2
export NODE_SKIP_PLATFORM_CHECK=1
