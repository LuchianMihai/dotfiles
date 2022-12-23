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
   . "$XDG_CONFIG_HOME/broot/launcher/bash/br"
}

alias v="nvim"
alias esp-idf-start="PROMPT='(esp-idf) $PROMPT' && . '$HOME/Projects/esp-idf/export.sh'"

