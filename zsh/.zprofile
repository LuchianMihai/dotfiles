#!/bin/sh
export PATH="$HOME/.local/bin:$PATH"

# XDG
# Needs to be set here so the X11 and zshdotdir can be set correctly
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export GNUPGHOME="$XDG_DATA_HOME/.gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"

# X11
# Using Gnome/Wayland but export it only once for compatibility with X11
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
export XAUTHORITY="$XDG_DATA_HOME/Xauthority"

# set zsh config dir
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
