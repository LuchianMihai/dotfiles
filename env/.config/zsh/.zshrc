autoload -U compinit
zstyle ':completion:*' menu select
compinit -d "$HOME/.cache/zsh/zcompdump-$ZSH_VERSION"

HISTFILE="$HOME/.cache/zsh/zsh-hist"
HISTSIZE=1000

# shellcheck disable=SC2034
{
   PROMPT='%F{red}%~%f %# '
   SAVEHIST=1000
}

# shellcheck disable=SC1091
{
   . "$ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
   . "$ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
}

alias v="nvim"

# LXQt sets QT_QPA_PLATFORMTHEME=lxqt
alias cmake-gui="export QT_QPA_PLATFORMTHEME=qt6gtk2 && cmake-gui"
