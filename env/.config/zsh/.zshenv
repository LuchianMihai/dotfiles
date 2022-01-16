#!/bin/sh

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export PATH="$HOME/.local/bin:$PATH"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export XAUTHORITY="$XDG_DATA_HOME/Xauthority"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"

# move .gtkrc-1.0
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
# move .gtkrc-2.0
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
# move .ipython dir
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"
# move .jupyter dir
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"

# move libice .ICEauthority file location
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
# move .pylint.d dir
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
#move less history file location
export LESSHISTFILE="$XDG_CACHE_HOME/lesshst"

# set zsh config dir
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
