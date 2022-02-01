#!/bin/sh

export PATH="$HOME/.local/bin:$PATH"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

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
