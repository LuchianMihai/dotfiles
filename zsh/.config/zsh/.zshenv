#!/bin/sh

# GTK
# move .gtkrc-1.0
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
# move .gtkrc-2.0
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# move .ipython dir
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"
# move .jupyter dir
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"

export PYTHONPYCACHEPREFIX=$XDG_CACHE_HOME/python

export PYTHONUSERBASE=$XDG_DATA_HOME/python

# move libice .ICEauthority file location
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
# move .pylint.d dir
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
#move less history file location
export LESSHISTFILE="$XDG_CACHE_HOME/lesshst"

export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"

export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PLATFORMIO_CORE_DIR="$XDG_CONFIG_HOME/platformio"

export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"

export PLATFORMIO_CORE_DIR="$XDG_DATA_HOME/platformio"

export IDF_TOOLS_PATH="$XDG_DATA_HOME/esp-idf/espressif"

export QUCSDIR="$XDG_DATA_HOME/qucs"

export BSL_DIR="${HOME}/Nextcloud/Electronics"
export IDF_TOOLS_PATH="${XDG_DATA_HOME}/espressif"

export ZEPHYR_BASE="${HOME}/Projects/zephyrproject"
