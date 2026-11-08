#!/usr/bin/env bash
# Symlink kitty, tmux and neovim configs from this repo into place,
# then bootstrap the plugin managers (tpm for tmux, packer for nvim).
# Safe to re-run: existing non-symlink configs are backed up as *.bak.<timestamp>.
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STAMP="$(date +%Y%m%d%H%M%S)"

link() {
  local src="$1" dst="$2"
  mkdir -p "$(dirname "$dst")"
  if [ -L "$dst" ]; then
    rm "$dst"
  elif [ -e "$dst" ]; then
    if [ -d "$dst" ] && [ -z "$(ls -A "$dst")" ]; then
      rmdir "$dst"
    else
      mv "$dst" "$dst.bak.$STAMP"
      echo "backed up $dst -> $dst.bak.$STAMP"
    fi
  fi
  ln -s "$src" "$dst"
  echo "linked $dst -> $src"
}

link "$DOTFILES/kitty"      "$HOME/.config/kitty"
link "$DOTFILES/.tmux.conf" "$HOME/.tmux.conf"
link "$DOTFILES/nvim"       "$HOME/.config/nvim"

# tmux plugin manager
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone --depth 1 https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi
if command -v tmux >/dev/null; then
  # install_plugins needs a running server with tpm loaded (tmux.conf runs it with -b, so wait for it)
  tmux new-session -d -s dotfiles-install 2>/dev/null || true
  for _ in $(seq 1 10); do
    tmux show-environment -g TMUX_PLUGIN_MANAGER_PATH >/dev/null 2>&1 && break
    sleep 0.5
  done
  "$HOME/.tmux/plugins/tpm/bin/install_plugins" || true
  tmux kill-session -t dotfiles-install 2>/dev/null || true
else
  echo "tmux not installed - run ~/.tmux/plugins/tpm/bin/install_plugins after installing it"
fi

# packer.nvim (loaded as an 'opt' package by lua/kash/packer.lua)
PACKER="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
if [ ! -d "$PACKER" ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim "$PACKER"
fi
nvim --headless -c "autocmd User PackerComplete quitall" -c "PackerSync" >/dev/null 2>&1 || true
# treesitter parsers (needs a C compiler); synchronous so headless nvim doesn't exit mid-download
nvim --headless -c "TSInstallSync! vimdoc cpp rust c lua vim query" -c "qa" >/dev/null 2>&1 || true

echo "done."
