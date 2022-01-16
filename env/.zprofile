#!/bin/sh

# zprofile will not be sourced if GDM is used

# export WM="GNOME"

# needed for DWM
if [ "$WM" = "DWM" ]
then
   export _JAVA_AWT_WM_NONREPARENTING=1
   export QT_QPA_PLATFORMTHEME=gtk2
   export QT_STYLE_OVERRIDE=gtk2
fi

# set zsh config dir
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
