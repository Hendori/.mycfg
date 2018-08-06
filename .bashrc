export PATH=\$HOME/.local/bin:\$PATH

function title {
    echo -ne "\033]0;"$*"\007"
}

