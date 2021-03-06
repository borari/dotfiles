#!/bin/bash
#
# Installs oh-my-zsh and powerlevel10k

export ZSH="$HOME/.local/share/oh-my-zsh"

# This directory wasn't getting made?
if [ ! -d "$HOME/.local/share/zsh" ]
then
  mkdir -p "$HOME/.local/share/zsh"
fi

# Installs oh-my-zsh
if [ ! -d "$ZSH" ]
then
  echo "  Installing oh-my-zsh for you."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
elif [ -d "$ZSH" ]
then
  echo " The oh-my-zsh directory already exists, skipping install..."
fi

# Sets font dir per OS
if [ "$(uname -s)" == "Darwin" ]
then
  export FONT_DIR="$HOME/Library/Fonts"
elif [ "$(uname -s)" == "Linux" ]
then
  export FONT_DIR="/usr/share/fonts"
fi

# Installs p10k required fonts
if [ -f "$FONT_DIR/MesloLGS NF Regular.ttf" ]
then
  echo "  Fonts already installed."
elif [ ! -f "$FONT_DIR/MesloLGS NF Regular.ttf" ]
then
  echo "Downloading MesloLGS NF files..."
  wget -P /var/tmp "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"
  wget -P /var/tmp "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"
  wget -P /var/tmp "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf"
  wget -P /var/tmp "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf"
  echo "Installing MesloLGS NF files..."
  mv /var/tmp/MesloLGS* $FONT_DIR/
fi

# Installs powerlevel10k
if [ ! -d "$ZSH/custom/themes/powerlevel10k" ]
then
  echo "  Installing powerlevel10k theme for you."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$ZSH/custom}/themes/powerlevel10k
elif [ -d "$ZSH/custom/themes/powerlevel10k" ]
then
  echo " The powerlevel10k directory already exists, skipping install..."
fi
