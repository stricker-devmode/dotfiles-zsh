# Set user locale explicitly
LANG=en_GB.UTF8

# Editor
for _x in nvim vim vi; do
    if command -v ${_x} &> /dev/null; then
        export EDITOR=$(command -v ${_x})
        break
    fi
done
unset _x

# Make rust behave
if [ -d "${XDG_DATA_HOME}/cargo" ]; then
    export CARGO_HOME="${XDG_DATA_HOME}/cargo"
    if ! grep -q "${CARGO_HOME}/bin" <<<${PATH}; then
        PATH="${CARGO_HOME}/bin:${PATH}"
    fi
fi
if [ -d "${XDG_DATA_HOME}/rustup" ]; then
    export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"
fi

# Custom completion files
if ! grep -q "${XDG_DATA_HOME}/zsh-completions" <<<${fpath}; then
    fpath+=${XDG_DATA_HOME}/zsh-completions
fi
