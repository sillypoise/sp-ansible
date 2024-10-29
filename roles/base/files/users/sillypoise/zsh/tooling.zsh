# Aactivator setup
if command -v aactivator &>/dev/null; then
    eval "$(aactivator init)"
fi

# Starship Prompt setup
if command -v starship &>/dev/null; then
    eval "$(starship init zsh)"
fi

# Broot shell integration
if [ -f "$HOME/.config/broot/launcher/bash/br" ]; then
    source "$HOME/.config/broot/launcher/bash/br"
fi

# Volta setup
if [ -d "$HOME/.volta" ]; then
    export VOLTA_HOME="$HOME/.volta"
    export PATH="$VOLTA_HOME/bin:$PATH"
fi

# Rustup setup
if command -v rustup &>/dev/null; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi

# Zoxide setup
if command -v zoxide &>/dev/null; then
    eval "$(zoxide init zsh --cmd cd)"
fi

