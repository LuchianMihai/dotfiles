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

export BSL_DIR="${HOME}/Nextcloud/Electronics"
export IDF_TOOLS_PATH="${XDG_DATA_HOME}/espressif"

alias v="nvim"

# here we have an hack, start-esp-idf is also an script at ${HOME}/.local/bin
alias start-esp-idf="source start-esp-idf"

source "/home/bsl/.config/broot/launcher/bash/br"
source "${ZDOTDIR}/.zshlocal"
source "/usr/share/fzf/completion.zsh"
