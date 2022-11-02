cd() {
    if [[ -d "$1" ]] || [[ -z "$1" ]]; then
        builtin cd "$@"
    else
        builtin cd "${1%/*}"
    fi
}
