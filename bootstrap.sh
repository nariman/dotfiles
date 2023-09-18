#!/usr/bin/env bash

set -e

ROOT=$(dirname "$0")

link () {
    local src=$1 dst=$2

    if [ -e "$dst" ]; then
        echo "Destination $dst already exists, skipping"
        return
    fi

    echo "Linking $dst to $src"
    ln -s $src $dst
}

link "$ROOT/git/gitconfig" ~/.gitconfig
link "$ROOT/git/gitignore_global" ~/.gitignore_global

mkdir -p ~/.config
link "$ROOT/.config/nvim" ~/.config/nvim
link "$ROOT/.config/tmux" ~/.config/tmux
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm || true
