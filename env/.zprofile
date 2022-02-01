#!/bin/sh

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# X11
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
export XAUTHORITY="$XDG_DATA_HOME/Xauthority"

# GTK
# move .gtkrc-1.0
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
# move .gtkrc-2.0
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# set zsh config dir
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
